
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct query_node {int qu; struct query_node* next; int id; } ;
struct optioninfo {int dummy; } ;
struct TYPE_2__ {struct query_node* head; } ;


 int adns_cancel (int ) ;
 int dequeue_query (struct query_node*) ;
 TYPE_1__ outstanding ;
 scalar_t__ strcmp (int ,char const*) ;

void of_cancel_id(const struct optioninfo *oi, const char *arg, const char *arg2) {
  struct query_node *qun;

  for (qun= outstanding.head;
       qun && strcmp(qun->id,arg);
       qun= qun->next);
  if (!qun) return;
  adns_cancel(qun->qu);
  dequeue_query(qun);
}
