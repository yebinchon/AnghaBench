
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; } ;
typedef TYPE_1__ Vdbe ;


 int SQLITE_OK ;

void sqlite3VdbeResetStepResult(Vdbe *p){
  p->rc = SQLITE_OK;
}
