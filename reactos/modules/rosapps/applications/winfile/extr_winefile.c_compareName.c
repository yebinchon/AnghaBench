
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ Entry ;


 int compareType (TYPE_1__ const*,TYPE_1__ const*) ;
 int lstrcmpiW (int ,int ) ;

__attribute__((used)) static int compareName(const void* arg1, const void* arg2)
{
 const WIN32_FIND_DATAW* fd1 = &(*(const Entry* const*)arg1)->data;
 const WIN32_FIND_DATAW* fd2 = &(*(const Entry* const*)arg2)->data;

 int cmp = compareType(fd1, fd2);
 if (cmp)
  return cmp;

 return lstrcmpiW(fd1->cFileName, fd2->cFileName);
}
