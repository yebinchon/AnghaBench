
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nChar; } ;
typedef TYPE_1__ sqlite3_str ;



int sqlite3_str_length(sqlite3_str *p){
  return p ? p->nChar : 0;
}
