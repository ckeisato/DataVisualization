class Tree {
  MyNode root;
  
  public Tree () {

  }

  public createTree (MyParser connectivity) {
    
  }

//traverses the tree to add details to each node
//called after tree parent chilren nodes have been laid out and leaf nodes have information
  public initializeNodesDetails(MyNode node){
    moduleReport(moduleReport, node);  //so far only sets module report

    if(node.leaf){
      return;
    }
    for(int i = 0; i < node.children.size(); i++){
       MyNode child = (MyNode) node.children.get(i);
       intializeNodeDetails(child);
    }
  }

  //gets composition called by intialization details
 // public moduleComposition(MyParser composition, MyNode node){
  //}
  
  //traverse module report, places number of reactions into given node 
  public moduleReport(MyParser moduleReport, myNode node){
    string id = node.id;
    for(int i = 0; i < moduleReport.numItems; i++){
      if(id.equals(moduleReport.getValues(i, 0))){
        int num = int(moduleReport.getValues(i, 0));
        node.details.numReactions = num;///size in module report
        break; 
      }
    }
  }

  

}
