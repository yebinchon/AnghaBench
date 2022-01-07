
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_3__ {scalar_t__ file_format; int enc; int fkeyHash; int trigHash; int idxHash; int tblHash; } ;
typedef TYPE_1__ Schema ;
typedef int Btree ;


 int SQLITE_UTF8 ;
 scalar_t__ sqlite3BtreeSchema (int *,int,int ) ;
 scalar_t__ sqlite3DbMallocZero (int ,int) ;
 int sqlite3HashInit (int *) ;
 int sqlite3OomFault (int *) ;
 int sqlite3SchemaClear ;

Schema *sqlite3SchemaGet(sqlite3 *db, Btree *pBt){
  Schema * p;
  if( pBt ){
    p = (Schema *)sqlite3BtreeSchema(pBt, sizeof(Schema), sqlite3SchemaClear);
  }else{
    p = (Schema *)sqlite3DbMallocZero(0, sizeof(Schema));
  }
  if( !p ){
    sqlite3OomFault(db);
  }else if ( 0==p->file_format ){
    sqlite3HashInit(&p->tblHash);
    sqlite3HashInit(&p->idxHash);
    sqlite3HashInit(&p->trigHash);
    sqlite3HashInit(&p->fkeyHash);
    p->enc = SQLITE_UTF8;
  }
  return p;
}
