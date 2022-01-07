
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_value ;
typedef int sqlite3_str ;
typedef int sqlite3_context ;
struct TYPE_12__ {double iRowid; TYPE_1__* aCoord; } ;
struct TYPE_11__ {int nDim; int nDim2; int nBytesPerCell; int* zData; } ;
struct TYPE_10__ {double i; scalar_t__ f; } ;
typedef TYPE_2__ RtreeNode ;
typedef TYPE_3__ RtreeCell ;
typedef TYPE_2__ Rtree ;


 int NCELL (TYPE_2__*) ;
 int UNUSED_PARAMETER (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int nodeGetCell (TYPE_2__*,TYPE_2__*,int,TYPE_3__*) ;
 int sqlite3_free ;
 int sqlite3_result_error_code (int *,int) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_str_append (int *,char*,int) ;
 int sqlite3_str_appendf (int *,char*,double) ;
 int sqlite3_str_errcode (int *) ;
 int sqlite3_str_finish (int *) ;
 int * sqlite3_str_new (int ) ;
 scalar_t__ sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_int (int *) ;

__attribute__((used)) static void rtreenode(sqlite3_context *ctx, int nArg, sqlite3_value **apArg){
  RtreeNode node;
  Rtree tree;
  int ii;
  int nData;
  int errCode;
  sqlite3_str *pOut;

  UNUSED_PARAMETER(nArg);
  memset(&node, 0, sizeof(RtreeNode));
  memset(&tree, 0, sizeof(Rtree));
  tree.nDim = (u8)sqlite3_value_int(apArg[0]);
  if( tree.nDim<1 || tree.nDim>5 ) return;
  tree.nDim2 = tree.nDim*2;
  tree.nBytesPerCell = 8 + 8 * tree.nDim;
  node.zData = (u8 *)sqlite3_value_blob(apArg[1]);
  nData = sqlite3_value_bytes(apArg[1]);
  if( nData<4 ) return;
  if( nData<NCELL(&node)*tree.nBytesPerCell ) return;

  pOut = sqlite3_str_new(0);
  for(ii=0; ii<NCELL(&node); ii++){
    RtreeCell cell;
    int jj;

    nodeGetCell(&tree, &node, ii, &cell);
    if( ii>0 ) sqlite3_str_append(pOut, " ", 1);
    sqlite3_str_appendf(pOut, "{%lld", cell.iRowid);
    for(jj=0; jj<tree.nDim2; jj++){

      sqlite3_str_appendf(pOut, " %g", (double)cell.aCoord[jj].f);



    }
    sqlite3_str_append(pOut, "}", 1);
  }
  errCode = sqlite3_str_errcode(pOut);
  sqlite3_result_text(ctx, sqlite3_str_finish(pOut), -1, sqlite3_free);
  sqlite3_result_error_code(ctx, errCode);
}
