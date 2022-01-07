
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ftLastWriteTime; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ Entry ;


 int CompareFileTime (int *,int *) ;
 int compareType (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static int compareDate(const void* arg1, const void* arg2)
{
 const WIN32_FIND_DATAW* fd1 = &(*(const Entry* const*)arg1)->data;
 const WIN32_FIND_DATAW* fd2 = &(*(const Entry* const*)arg2)->data;

 int cmp = compareType(fd1, fd2);
 if (cmp)
  return cmp;

 return CompareFileTime(&fd2->ftLastWriteTime, &fd1->ftLastWriteTime);
}
