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
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (unsigned char const*,int) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn = FUNC3(argv[0]);
  int nIn = FUNC2(argv[0]);
  unsigned char *zOut = FUNC4(zIn, nIn);
  if( zOut==0 ){
    FUNC0(context);
  }else{
    FUNC1(context, (char*)zOut, -1, sqlite3_free);
  }
}