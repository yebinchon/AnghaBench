
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_str ;
typedef int sqlite3_context ;
typedef int sqlite3 ;
struct TYPE_7__ {int nVertex; } ;
typedef TYPE_1__ GeoPoly ;


 int GeoX (TYPE_1__*,int) ;
 int GeoY (TYPE_1__*,int) ;
 TYPE_1__* geopolyFuncParam (int *,int *,int ) ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_free (TYPE_1__*) ;
 int sqlite3_result_text (int *,int ,int,int (*) (TYPE_1__*)) ;
 int sqlite3_str_appendf (int *,char*,...) ;
 int sqlite3_str_finish (int *) ;
 int * sqlite3_str_new (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void geopolySvgFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p;
  if( argc<1 ) return;
  p = geopolyFuncParam(context, argv[0], 0);
  if( p ){
    sqlite3 *db = sqlite3_context_db_handle(context);
    sqlite3_str *x = sqlite3_str_new(db);
    int i;
    char cSep = '\'';
    sqlite3_str_appendf(x, "<polyline points=");
    for(i=0; i<p->nVertex; i++){
      sqlite3_str_appendf(x, "%c%g,%g", cSep, GeoX(p,i), GeoY(p,i));
      cSep = ' ';
    }
    sqlite3_str_appendf(x, " %g,%g'", GeoX(p,0), GeoY(p,0));
    for(i=1; i<argc; i++){
      const char *z = (const char*)sqlite3_value_text(argv[i]);
      if( z && z[0] ){
        sqlite3_str_appendf(x, " %s", z);
      }
    }
    sqlite3_str_appendf(x, "></polyline>");
    sqlite3_result_text(context, sqlite3_str_finish(x), -1, sqlite3_free);
    sqlite3_free(p);
  }
}
