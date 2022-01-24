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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  sqlite3_int64 z, x[63];
  int i, j;
  z = 0;
  for(i=0; i<argc; i++){
    x[i] = FUNC2(argv[i]);
  }
  if( argc>0 ){
    for(i=0; i<63; i++){
      j = i%argc;
      z |= (x[j]&1)<<i;
      x[j] >>= 1;
    }
  }
  FUNC1(context, z);
  for(i=0; i<argc; i++){
    if( x[i] ){
      FUNC0(context, "parameter too large", -1);
    }
  }
}