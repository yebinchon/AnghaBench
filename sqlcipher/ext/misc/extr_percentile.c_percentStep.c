
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {double rPct; int nUsed; int nAlloc; double* a; } ;
typedef TYPE_1__ Percentile ;


 int SQLITE_FLOAT ;
 int SQLITE_INTEGER ;
 int SQLITE_NULL ;
 int assert (int) ;
 scalar_t__ isInfinity (double) ;
 int memset (TYPE_1__*,int ,int) ;
 int sameValue (double,double) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_free (double*) ;
 double* sqlite3_realloc64 (double*,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_error_nomem (int *) ;
 double sqlite3_value_double (int *) ;
 int sqlite3_value_numeric_type (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void percentStep(sqlite3_context *pCtx, int argc, sqlite3_value **argv){
  Percentile *p;
  double rPct;
  int eType;
  double y;
  assert( argc==2 );


  eType = sqlite3_value_numeric_type(argv[1]);
  rPct = sqlite3_value_double(argv[1]);
  if( (eType!=SQLITE_INTEGER && eType!=SQLITE_FLOAT)
   || rPct<0.0 || rPct>100.0 ){
    sqlite3_result_error(pCtx, "2nd argument to percentile() is not "
                         "a number between 0.0 and 100.0", -1);
    return;
  }


  p = (Percentile*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p==0 ) return;



  if( p->rPct==0.0 ){
    p->rPct = rPct+1.0;
  }else if( !sameValue(p->rPct,rPct+1.0) ){
    sqlite3_result_error(pCtx, "2nd argument to percentile() is not the "
                               "same for all input rows", -1);
    return;
  }


  eType = sqlite3_value_type(argv[0]);
  if( eType==SQLITE_NULL ) return;



  if( eType!=SQLITE_INTEGER && eType!=SQLITE_FLOAT ){
    sqlite3_result_error(pCtx, "1st argument to percentile() is not "
                               "numeric", -1);
    return;
  }


  y = sqlite3_value_double(argv[0]);
  if( isInfinity(y) ){
    sqlite3_result_error(pCtx, "Inf input to percentile()", -1);
    return;
  }


  if( p->nUsed>=p->nAlloc ){
    unsigned n = p->nAlloc*2 + 250;
    double *a = sqlite3_realloc64(p->a, sizeof(double)*n);
    if( a==0 ){
      sqlite3_free(p->a);
      memset(p, 0, sizeof(*p));
      sqlite3_result_error_nomem(pCtx);
      return;
    }
    p->nAlloc = n;
    p->a = a;
  }
  p->a[p->nUsed++] = y;
}
