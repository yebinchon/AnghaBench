
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; int * list; } ;


 unsigned int ARRAYSIZE (TYPE_1__*) ;
 TYPE_1__* fd_kb_list ;
 scalar_t__ safe_strcmp (int ,char const*) ;

__attribute__((used)) static int fd_get_kbdrv(const char* kb)
{
 unsigned int i, j;
 for (i=0; i<ARRAYSIZE(fd_kb_list); i++) {
  for (j=0; j<fd_kb_list[i].size; j++) {
   if (safe_strcmp(fd_kb_list[i].list[j], kb) == 0) {
    return i;
   }
  }
 }
 return -1;
}
