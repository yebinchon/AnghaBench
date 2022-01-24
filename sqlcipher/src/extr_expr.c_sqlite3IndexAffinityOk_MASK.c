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
#define  SQLITE_AFF_BLOB 129 
#define  SQLITE_AFF_TEXT 128 
 char FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char) ; 

int FUNC2(Expr *pExpr, char idx_affinity){
  char aff = FUNC0(pExpr);
  switch( aff ){
    case SQLITE_AFF_BLOB:
      return 1;
    case SQLITE_AFF_TEXT:
      return idx_affinity==SQLITE_AFF_TEXT;
    default:
      return FUNC1(idx_affinity);
  }
}