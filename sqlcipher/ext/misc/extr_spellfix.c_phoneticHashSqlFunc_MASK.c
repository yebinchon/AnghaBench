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
 unsigned char* FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zIn;
  unsigned char *zOut;

  zIn = FUNC4(argv[0]);
  if( zIn==0 ) return;
  zOut = FUNC0(zIn, FUNC3(argv[0]));
  if( zOut==0 ){
    FUNC1(context);
  }else{
    FUNC2(context, (char*)zOut, -1, sqlite3_free);
  }
}