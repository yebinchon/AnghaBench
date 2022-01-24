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
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_int64 z, n, i, x;
  int j, k;
  z = FUNC1(argv[0]);
  n = FUNC1(argv[1]);
  i = FUNC1(argv[2]);
  x = 0;
  for(k=0, j=i; j<63; j+=n, k++){
    x |= ((z>>j)&1)<<k;
  }
  FUNC0(context, x);
}