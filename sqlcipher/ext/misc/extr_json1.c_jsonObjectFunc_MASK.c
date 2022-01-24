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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SUBTYPE ; 
 scalar_t__ SQLITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  int i;
  JsonString jx;
  const char *z;
  u32 n;

  if( argc&1 ){
    FUNC7(ctx, "json_object() requires an even number "
                                  "of arguments", -1);
    return;
  }
  FUNC4(&jx, ctx);
  FUNC0(&jx, '{');
  for(i=0; i<argc; i+=2){
    if( FUNC11(argv[i])!=SQLITE_TEXT ){
      FUNC7(ctx, "json_object() labels must be TEXT", -1);
      FUNC5(&jx);
      return;
    }
    FUNC1(&jx);
    z = (const char*)FUNC10(argv[i]);
    n = (u32)FUNC9(argv[i]);
    FUNC2(&jx, z, n);
    FUNC0(&jx, ':');
    FUNC3(&jx, argv[i+1]);
  }
  FUNC0(&jx, '}');
  FUNC6(&jx);
  FUNC8(ctx, JSON_SUBTYPE);
}