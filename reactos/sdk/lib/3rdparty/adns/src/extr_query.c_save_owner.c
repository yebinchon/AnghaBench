
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* adns_query ;
struct TYPE_6__ {scalar_t__* owner; } ;
typedef TYPE_2__ adns_answer ;
struct TYPE_5__ {TYPE_2__* answer; } ;


 scalar_t__* adns__alloc_preserved (TYPE_1__*,size_t) ;
 int assert (int) ;
 int memcpy (scalar_t__*,char const*,size_t) ;

__attribute__((used)) static int save_owner(adns_query qu, const char *owner, int ol) {

  adns_answer *ans;

  ans= qu->answer;
  assert(!ans->owner);

  ans->owner= adns__alloc_preserved(qu, (size_t) ol+1); if (!ans->owner) return 0;

  memcpy(ans->owner,owner, (size_t) ol);
  ans->owner[ol]= 0;
  return 1;
}
