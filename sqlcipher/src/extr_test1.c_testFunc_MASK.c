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
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(sqlite3_context *context, int argc, sqlite3_value **argv){
  while( argc>=2 ){
    const char *zArg0 = (char*)FUNC11(argv[0]);
    if( zArg0 ){
      if( 0==FUNC0(zArg0, "int") ){
        FUNC3(context, FUNC9(argv[1]));
      }else if( FUNC0(zArg0,"int64")==0 ){
        FUNC4(context, FUNC10(argv[1]));
      }else if( FUNC0(zArg0,"string")==0 ){
        FUNC6(context, (char*)FUNC11(argv[1]), -1,
            SQLITE_TRANSIENT);
      }else if( FUNC0(zArg0,"double")==0 ){
        FUNC1(context, FUNC8(argv[1]));
      }else if( FUNC0(zArg0,"null")==0 ){
        FUNC5(context);
      }else if( FUNC0(zArg0,"value")==0 ){
        FUNC7(context, argv[FUNC9(argv[1])]);
      }else{
        goto error_out;
      }
    }else{
      goto error_out;
    }
    argc -= 2;
    argv += 2;
  }
  return;

error_out:
  FUNC2(context,"first argument should be one of: "
      "int int64 string double null value", -1);
}