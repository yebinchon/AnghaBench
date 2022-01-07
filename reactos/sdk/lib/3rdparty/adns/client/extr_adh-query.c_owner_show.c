
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct query_node {char const* owner; } ;
struct TYPE_3__ {char const* owner; } ;
typedef TYPE_1__ adns_answer ;



__attribute__((used)) static const char *owner_show(struct query_node *qun, adns_answer *answer) {
  return answer->owner ? answer->owner : qun->owner;
}
