
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_6__ {int nDb; } ;


 int OP_ParseSchema ;
 int P4_DYNAMIC ;
 int sqlite3VdbeAddOp4 (TYPE_2__*,int ,int,int ,int ,char*,int ) ;
 int sqlite3VdbeUsesBtree (TYPE_2__*,int) ;

void sqlite3VdbeAddParseSchemaOp(Vdbe *p, int iDb, char *zWhere){
  int j;
  sqlite3VdbeAddOp4(p, OP_ParseSchema, iDb, 0, 0, zWhere, P4_DYNAMIC);
  for(j=0; j<p->db->nDb; j++) sqlite3VdbeUsesBtree(p, j);
}
