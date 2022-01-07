
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zName; } ;
typedef TYPE_1__ sqlite3_vfs ;


 int fprintf (int ,char*,char*) ;
 TYPE_1__* sqlite3_vfs_find (int ) ;
 int stdout ;

void report_default_vfs(){
  sqlite3_vfs *pVfs = sqlite3_vfs_find(0);
  fprintf(stdout, "default vfs is \"%s\"\n", pVfs->zName);
}
