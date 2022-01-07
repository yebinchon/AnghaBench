
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; scalar_t__ zErr; } ;
typedef TYPE_1__ Error ;


 int sqlite3_free (scalar_t__) ;

__attribute__((used)) static void free_err(Error *p){
  sqlite3_free(p->zErr);
  p->zErr = 0;
  p->rc = 0;
}
