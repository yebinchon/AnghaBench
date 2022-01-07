
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int z; } ;
typedef TYPE_1__ Str ;


 int StrInit (TYPE_1__*) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void StrFree(Str *p){
  sqlite3_free(p->z);
  StrInit(p);
}
