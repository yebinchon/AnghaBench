
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_10__ {int * pVdbe; TYPE_3__* db; } ;
struct TYPE_8__ {TYPE_1__* pSchema; } ;
struct TYPE_7__ {scalar_t__ schema_cookie; } ;
typedef TYPE_4__ Parse ;


 int BTREE_SCHEMA_VERSION ;
 int OP_SetCookie ;
 int assert (int ) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int ,int) ;

void sqlite3ChangeCookie(Parse *pParse, int iDb){
  sqlite3 *db = pParse->db;
  Vdbe *v = pParse->pVdbe;
  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  sqlite3VdbeAddOp3(v, OP_SetCookie, iDb, BTREE_SCHEMA_VERSION,
                   (int)(1+(unsigned)db->aDb[iDb].pSchema->schema_cookie));
}
