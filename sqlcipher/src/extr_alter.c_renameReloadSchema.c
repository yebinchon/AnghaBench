
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_4__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;


 int sqlite3ChangeCookie (TYPE_1__*,int) ;
 int sqlite3VdbeAddParseSchemaOp (int *,int,int ) ;

__attribute__((used)) static void renameReloadSchema(Parse *pParse, int iDb){
  Vdbe *v = pParse->pVdbe;
  if( v ){
    sqlite3ChangeCookie(pParse, iDb);
    sqlite3VdbeAddParseSchemaOp(pParse->pVdbe, iDb, 0);
    if( iDb!=1 ) sqlite3VdbeAddParseSchemaOp(pParse->pVdbe, 1, 0);
  }
}
