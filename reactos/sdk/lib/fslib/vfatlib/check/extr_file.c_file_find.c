
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int first; scalar_t__ name; } ;
typedef TYPE_1__ FDSC ;


 unsigned char DELETED_FLAG ;
 scalar_t__ MSDOS_NAME ;
 int strncmp (scalar_t__,char*,scalar_t__) ;

__attribute__((used)) static FDSC **file_find(FDSC ** dir, char *fixed)
{
    if (!dir || !*dir)
 return ((void*)0);
    if (*(unsigned char *)fixed == DELETED_FLAG) {
 while (*dir) {
     if (!strncmp((*dir)->name + 1, fixed + 1, MSDOS_NAME - 1)
  && !(*dir)->first)
  return dir;
     dir = &(*dir)->next;
 }
 return ((void*)0);
    }
    while (*dir) {
 if (!strncmp((*dir)->name, fixed, MSDOS_NAME) && !(*dir)->first)
     return dir;
 dir = &(*dir)->next;
    }
    return ((void*)0);
}
