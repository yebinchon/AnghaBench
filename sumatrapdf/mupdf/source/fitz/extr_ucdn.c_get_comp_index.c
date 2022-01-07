
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int start; int index; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ Reindex ;


 scalar_t__ bsearch (TYPE_1__*,TYPE_1__ const*,size_t,int,int ) ;
 int compare_reindex ;

__attribute__((used)) static int get_comp_index(uint32_t code, const Reindex *idx, size_t len)
{
 Reindex *res;
 Reindex r = {0, 0, 0};
 r.start = code;
 res = (Reindex *) bsearch(&r, idx, len, sizeof(Reindex), compare_reindex);

 if (res != ((void*)0))
  return res->index + (code - res->start);
 else
  return -1;
}
