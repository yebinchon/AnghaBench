
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pVCheck; } ;
typedef TYPE_1__ amatch_vtab ;


 int sqlite3_finalize (scalar_t__) ;

__attribute__((used)) static void amatchVCheckClear(amatch_vtab *p){
  if( p->pVCheck ){
    sqlite3_finalize(p->pVCheck);
    p->pVCheck = 0;
  }
}
