
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct SrcList_item {scalar_t__ pSchema; char* zDatabase; int zName; } ;
typedef int Table ;
struct TYPE_8__ {TYPE_1__* aDb; } ;
struct TYPE_7__ {TYPE_3__* db; } ;
struct TYPE_6__ {char* zDbSName; } ;
typedef TYPE_2__ Parse ;


 int assert (int) ;
 int * sqlite3LocateTable (TYPE_2__*,int ,int ,char const*) ;
 int sqlite3SchemaToIndex (TYPE_3__*,scalar_t__) ;

Table *sqlite3LocateTableItem(
  Parse *pParse,
  u32 flags,
  struct SrcList_item *p
){
  const char *zDb;
  assert( p->pSchema==0 || p->zDatabase==0 );
  if( p->pSchema ){
    int iDb = sqlite3SchemaToIndex(pParse->db, p->pSchema);
    zDb = pParse->db->aDb[iDb].zDbSName;
  }else{
    zDb = p->zDatabase;
  }
  return sqlite3LocateTable(pParse, flags, p->zName, zDb);
}
