
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ quota_FILE ;


 int rewind (int ) ;

void sqlite3_quota_rewind(quota_FILE *p){
  rewind(p->f);
}
