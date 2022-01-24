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
typedef  scalar_t__ i64 ;
struct TYPE_3__ {int bDesc; } ;
typedef  TYPE_1__ Fts5Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(
  Fts5Expr *pExpr,
  i64 iLhs,
  i64 iRhs
){
  FUNC0( pExpr->bDesc==0 || pExpr->bDesc==1 );
  if( pExpr->bDesc==0 ){
    if( iLhs<iRhs ) return -1;
    return (iLhs > iRhs);
  }else{
    if( iLhs>iRhs ) return -1;
    return (iLhs < iRhs);
  }
}