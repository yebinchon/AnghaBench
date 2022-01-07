
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_6__ {int a; } ;
struct TYPE_5__ {int nVertex; int hdr; } ;
typedef TYPE_1__ GeoPoly ;
typedef TYPE_2__ GeoBBox ;


 int SQLITE_TRANSIENT ;
 TYPE_1__* geopolyBBox (int *,int ,int ,int ) ;
 scalar_t__ sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_result_blob (int *,int ,int,int ) ;

__attribute__((used)) static void geopolyBBoxFinal(
  sqlite3_context *context
){
  GeoPoly *p;
  GeoBBox *pBBox;
  pBBox = (GeoBBox*)sqlite3_aggregate_context(context, 0);
  if( pBBox==0 ) return;
  p = geopolyBBox(context, 0, pBBox->a, 0);
  if( p ){
    sqlite3_result_blob(context, p->hdr,
       4+8*p->nVertex, SQLITE_TRANSIENT);
    sqlite3_free(p);
  }
}
