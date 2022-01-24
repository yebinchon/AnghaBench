#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 char SQLITE_AFF_BLOB ; 
 char SQLITE_AFF_NUMERIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char) ; 

char FUNC3(Expr *pExpr, char aff2){
  char aff1 = FUNC1(pExpr);
  if( aff1 && aff2 ){
    /* Both sides of the comparison are columns. If one has numeric
    ** affinity, use that. Otherwise use no affinity.
    */
    if( FUNC2(aff1) || FUNC2(aff2) ){
      return SQLITE_AFF_NUMERIC;
    }else{
      return SQLITE_AFF_BLOB;
    }
  }else if( !aff1 && !aff2 ){
    /* Neither side of the comparison is a column.  Compare the
    ** results directly.
    */
    return SQLITE_AFF_BLOB;
  }else{
    /* One side is a column, the other is not. Use the columns affinity. */
    FUNC0( aff1==0 || aff2==0 );
    return (aff1 + aff2);
  }
}