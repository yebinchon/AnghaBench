
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ quota_FILE ;


 int fseek (int ,long,int) ;

int sqlite3_quota_fseek(quota_FILE *p, long offset, int whence){
  return fseek(p->f, offset, whence);
}
