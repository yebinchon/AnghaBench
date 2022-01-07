
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ quota_FILE ;


 long ftell (int ) ;

long sqlite3_quota_ftell(quota_FILE *p){
  return ftell(p->f);
}
