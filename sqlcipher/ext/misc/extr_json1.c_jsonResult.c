
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bErr; scalar_t__ bStatic; int nUsed; int zBuf; int pCtx; } ;
typedef TYPE_1__ JsonString ;


 int SQLITE_TRANSIENT ;
 int SQLITE_UTF8 ;
 int assert (scalar_t__) ;
 int jsonZero (TYPE_1__*) ;
 int sqlite3_free ;
 int sqlite3_result_text64 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void jsonResult(JsonString *p){
  if( p->bErr==0 ){
    sqlite3_result_text64(p->pCtx, p->zBuf, p->nUsed,
                          p->bStatic ? SQLITE_TRANSIENT : sqlite3_free,
                          SQLITE_UTF8);
    jsonZero(p);
  }
  assert( p->bStatic );
}
