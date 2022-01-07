
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pNext; int zPattern; } ;
typedef TYPE_1__ quotaGroup ;
struct TYPE_5__ {TYPE_1__* pGroup; } ;


 TYPE_3__ gQuota ;
 scalar_t__ quotaStrglob (int ,char const*) ;

__attribute__((used)) static quotaGroup *quotaGroupFind(const char *zFilename){
  quotaGroup *p;
  for(p=gQuota.pGroup; p && quotaStrglob(p->zPattern, zFilename)==0;
      p=p->pNext){}
  return p;
}
