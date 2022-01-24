#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {double rPct; int nUsed; int nAlloc; double* a; } ;
typedef  TYPE_1__ Percentile ;

/* Variables and functions */
 int SQLITE_FLOAT ; 
 int SQLITE_INTEGER ; 
 int SQLITE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (double,double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (double*) ; 
 double* FUNC6 (double*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 double FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(sqlite3_context *pCtx, int argc, sqlite3_value **argv){
  Percentile *p;
  double rPct;
  int eType;
  double y;
  FUNC0( argc==2 );

  /* Requirement 3:  P must be a number between 0 and 100 */
  eType = FUNC10(argv[1]);
  rPct = FUNC9(argv[1]);
  if( (eType!=SQLITE_INTEGER && eType!=SQLITE_FLOAT)
   || rPct<0.0 || rPct>100.0 ){
    FUNC7(pCtx, "2nd argument to percentile() is not "
                         "a number between 0.0 and 100.0", -1);
    return;
  }

  /* Allocate the session context. */
  p = (Percentile*)FUNC4(pCtx, sizeof(*p));
  if( p==0 ) return;

  /* Remember the P value.  Throw an error if the P value is different
  ** from any prior row, per Requirement (2). */
  if( p->rPct==0.0 ){
    p->rPct = rPct+1.0;
  }else if( !FUNC3(p->rPct,rPct+1.0) ){
    FUNC7(pCtx, "2nd argument to percentile() is not the "
                               "same for all input rows", -1);
    return;
  }

  /* Ignore rows for which Y is NULL */
  eType = FUNC11(argv[0]);
  if( eType==SQLITE_NULL ) return;

  /* If not NULL, then Y must be numeric.  Otherwise throw an error.
  ** Requirement 4 */
  if( eType!=SQLITE_INTEGER && eType!=SQLITE_FLOAT ){
    FUNC7(pCtx, "1st argument to percentile() is not "
                               "numeric", -1);
    return;
  }

  /* Throw an error if the Y value is infinity or NaN */
  y = FUNC9(argv[0]);
  if( FUNC1(y) ){
    FUNC7(pCtx, "Inf input to percentile()", -1);
    return;
  }

  /* Allocate and store the Y */
  if( p->nUsed>=p->nAlloc ){
    unsigned n = p->nAlloc*2 + 250;
    double *a = FUNC6(p->a, sizeof(double)*n);
    if( a==0 ){
      FUNC5(p->a);
      FUNC2(p, 0, sizeof(*p));
      FUNC8(pCtx);
      return;
    }
    p->nAlloc = n;
    p->a = a;
  }
  p->a[p->nUsed++] = y;
}