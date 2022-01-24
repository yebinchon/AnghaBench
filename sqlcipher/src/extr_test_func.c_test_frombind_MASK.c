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
typedef  int sqlite3_uint64 ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_uint64 m = 0;
  int i;
  for(i=0; i<argc && i<63; i++){
    if( FUNC1(argv[i]) ) m |= ((sqlite3_uint64)1)<<i;
  }
  FUNC0(context, (sqlite3_int64)m);
}