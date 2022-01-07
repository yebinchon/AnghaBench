
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; } ;
typedef TYPE_1__ t1CountCtx ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int SQLITE_BIGENDIAN ;
 scalar_t__ SQLITE_NULL ;
 TYPE_1__* sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error16 (int *,char const*,int) ;
 int sqlite3_value_int (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void t1CountStep(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  t1CountCtx *p;
  p = sqlite3_aggregate_context(context, sizeof(*p));
  if( (argc==0 || SQLITE_NULL!=sqlite3_value_type(argv[0]) ) && p ){
    p->n++;
  }
  if( argc>0 ){
    int v = sqlite3_value_int(argv[0]);
    if( v==40 ){
      sqlite3_result_error(context, "value of 40 handed to x_count", -1);

    }else if( v==41 ){
      const char zUtf16ErrMsg[] = { 0, 0x61, 0, 0x62, 0, 0x63, 0, 0, 0};
      sqlite3_result_error16(context, &zUtf16ErrMsg[1-SQLITE_BIGENDIAN], -1);

    }
  }
}
