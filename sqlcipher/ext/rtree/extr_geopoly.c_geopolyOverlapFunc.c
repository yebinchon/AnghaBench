
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int GeoPoly ;


 int * geopolyFuncParam (int *,int *,int ) ;
 int geopolyOverlap (int *,int *) ;
 int sqlite3_free (int *) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int (int *,int) ;

__attribute__((used)) static void geopolyOverlapFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p1 = geopolyFuncParam(context, argv[0], 0);
  GeoPoly *p2 = geopolyFuncParam(context, argv[1], 0);
  if( p1 && p2 ){
    int x = geopolyOverlap(p1, p2);
    if( x<0 ){
      sqlite3_result_error_nomem(context);
    }else{
      sqlite3_result_int(context, x);
    }
  }
  sqlite3_free(p1);
  sqlite3_free(p2);
}
