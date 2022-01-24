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
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  FILE *out;
  const char *z;
  sqlite3_int64 rc;
  const char *zFile;

  (void)argc;
  zFile = (const char*)FUNC6(argv[0]);
  if( zFile==0 ) return;
  out = FUNC1(zFile, "wb");
  if( out==0 ) return;
  z = (const char*)FUNC4(argv[1]);
  if( z==0 ){
    rc = 0;
  }else{
    rc = FUNC2(z, 1, FUNC5(argv[1]), out);
  }
  FUNC0(out);
  FUNC3(context, rc);
}