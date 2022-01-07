
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int TO_DIR ;
 int TO_FILE ;
 int TypeOrderFromDirname (int ) ;

__attribute__((used)) static int compareType(const WIN32_FIND_DATAW* fd1, const WIN32_FIND_DATAW* fd2)
{
 int order1 = fd1->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY? TO_DIR: TO_FILE;
 int order2 = fd2->dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY? TO_DIR: TO_FILE;


 if (order1==TO_DIR && order2==TO_DIR) {
  order1 = TypeOrderFromDirname(fd1->cFileName);
  order2 = TypeOrderFromDirname(fd2->cFileName);
 }

 return order2==order1? 0: order1<order2? -1: 1;
}
