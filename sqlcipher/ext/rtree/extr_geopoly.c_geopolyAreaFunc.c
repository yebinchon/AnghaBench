
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int GeoPoly ;


 int geopolyArea (int *) ;
 int * geopolyFuncParam (int *,int *,int ) ;
 int sqlite3_free (int *) ;
 int sqlite3_result_double (int *,int ) ;

__attribute__((used)) static void geopolyAreaFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p = geopolyFuncParam(context, argv[0], 0);
  if( p ){
    sqlite3_result_double(context, geopolyArea(p));
    sqlite3_free(p);
  }
}
