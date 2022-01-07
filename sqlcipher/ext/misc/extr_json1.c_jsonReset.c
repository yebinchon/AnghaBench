
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zBuf; int bStatic; } ;
typedef TYPE_1__ JsonString ;


 int jsonZero (TYPE_1__*) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static void jsonReset(JsonString *p){
  if( !p->bStatic ) sqlite3_free(p->zBuf);
  jsonZero(p);
}
