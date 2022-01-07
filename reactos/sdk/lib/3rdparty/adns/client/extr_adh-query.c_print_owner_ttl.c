
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ show_owner; } ;
struct query_node {TYPE_1__ pqfr; } ;
typedef int adns_answer ;


 int owner_show (struct query_node*,int *) ;
 int print_ttl (struct query_node*,int *) ;
 int print_withspace (int ) ;

__attribute__((used)) static void print_owner_ttl(struct query_node *qun, adns_answer *answer) {
  if (qun->pqfr.show_owner) print_withspace(owner_show(qun,answer));
  print_ttl(qun,answer);
}
