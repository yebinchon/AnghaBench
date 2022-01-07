
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_4__ {int nVertex; int hdr; } ;
typedef TYPE_1__ GeoPoly ;


 int SQLITE_TRANSIENT ;
 TYPE_1__* geopolyFuncParam (int *,int *,int ) ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_result_blob (int *,int ,int,int ) ;

__attribute__((used)) static void geopolyBlobFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p = geopolyFuncParam(context, argv[0], 0);
  if( p ){
    sqlite3_result_blob(context, p->hdr,
       4+8*p->nVertex, SQLITE_TRANSIENT);
    sqlite3_free(p);
  }
}
