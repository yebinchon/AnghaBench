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
typedef  int sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int LARGEST_INT64 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *context,
  int NotUsed,
  sqlite3_value **NotUsed2
){
  sqlite_int64 r;
  FUNC0(NotUsed, NotUsed2);
  FUNC1(sizeof(r), &r);
  if( r<0 ){
    /* We need to prevent a random number of 0x8000000000000000 
    ** (or -9223372036854775808) since when you do abs() of that
    ** number of you get the same value back again.  To do this
    ** in a way that is testable, mask the sign bit off of negative
    ** values, resulting in a positive value.  Then take the 
    ** 2s complement of that positive value.  The end result can
    ** therefore be no less than -9223372036854775807.
    */
    r = -(r & LARGEST_INT64);
  }
  FUNC2(context, r);
}