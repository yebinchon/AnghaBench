
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nFileSizeHigh; int nFileSizeLow; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ Entry ;


 int compareType (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static int compareSize(const void* arg1, const void* arg2)
{
 const WIN32_FIND_DATAW* fd1 = &(*(const Entry* const*)arg1)->data;
 const WIN32_FIND_DATAW* fd2 = &(*(const Entry* const*)arg2)->data;

 int cmp = compareType(fd1, fd2);
 if (cmp)
  return cmp;

 cmp = fd2->nFileSizeHigh - fd1->nFileSizeHigh;

 if (cmp < 0)
  return -1;
 else if (cmp > 0)
  return 1;

 cmp = fd2->nFileSizeLow - fd1->nFileSizeLow;

 return cmp<0? -1: cmp>0? 1: 0;
}
