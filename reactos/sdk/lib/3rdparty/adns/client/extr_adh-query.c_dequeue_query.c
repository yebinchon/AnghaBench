
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_node {struct query_node* owner; struct query_node* id; } ;


 int LIST_UNLINK (int ,struct query_node*) ;
 int free (struct query_node*) ;
 int outstanding ;

__attribute__((used)) static void dequeue_query(struct query_node *qun) {
  LIST_UNLINK(outstanding,qun);
  free(qun->id);
  free(qun->owner);
  free(qun);
}
