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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  i64 ;

/* Variables and functions */
 int SQLITE_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static i64 FUNC2(sqlite3_value *pVal, i64 iDefault){
  if( pVal ){
    int eType = FUNC1(pVal);
    if( eType==SQLITE_INTEGER ){
      return FUNC0(pVal);
    }
  }
  return iDefault;
}