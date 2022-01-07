
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef scalar_t__ i64 ;
struct TYPE_3__ {int approx; int overflow; int rSum; int iSum; int cnt; } ;
typedef TYPE_1__ SumCtx ;


 int SQLITE_INTEGER ;
 int SQLITE_NULL ;
 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 scalar_t__ sqlite3AddInt64 (int *,scalar_t__) ;
 TYPE_1__* sqlite3_aggregate_context (int *,int) ;
 scalar_t__ sqlite3_value_double (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 int sqlite3_value_numeric_type (int *) ;

__attribute__((used)) static void sumStep(sqlite3_context *context, int argc, sqlite3_value **argv){
  SumCtx *p;
  int type;
  assert( argc==1 );
  UNUSED_PARAMETER(argc);
  p = sqlite3_aggregate_context(context, sizeof(*p));
  type = sqlite3_value_numeric_type(argv[0]);
  if( p && type!=SQLITE_NULL ){
    p->cnt++;
    if( type==SQLITE_INTEGER ){
      i64 v = sqlite3_value_int64(argv[0]);
      p->rSum += v;
      if( (p->approx|p->overflow)==0 && sqlite3AddInt64(&p->iSum, v) ){
        p->approx = p->overflow = 1;
      }
    }else{
      p->rSum += sqlite3_value_double(argv[0]);
      p->approx = 1;
    }
  }
}
