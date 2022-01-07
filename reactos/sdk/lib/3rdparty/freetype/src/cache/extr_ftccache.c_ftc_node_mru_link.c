
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_nodes; int nodes_list; } ;
typedef scalar_t__ FTC_Node ;
typedef int FTC_MruNode ;
typedef TYPE_1__* FTC_Manager ;


 int FTC_MruNode_Prepend (int *,int ) ;

__attribute__((used)) static void
  ftc_node_mru_link( FTC_Node node,
                     FTC_Manager manager )
  {
    void *nl = &manager->nodes_list;


    FTC_MruNode_Prepend( (FTC_MruNode*)nl,
                         (FTC_MruNode)node );
    manager->num_nodes++;
  }
