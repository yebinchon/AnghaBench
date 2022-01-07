
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pLock; } ;
struct TYPE_4__ {int nFile; struct TYPE_4__* pNext; int zFile; } ;
typedef TYPE_1__ AsyncLock ;


 TYPE_3__ async ;
 scalar_t__ memcmp (int ,char const*,int) ;

__attribute__((used)) static AsyncLock *findLock(const char *zName, int nName){
  AsyncLock *p = async.pLock;
  while( p && (p->nFile!=nName || memcmp(p->zFile, zName, nName)) ){
    p = p->pNext;
  }
  return p;
}
