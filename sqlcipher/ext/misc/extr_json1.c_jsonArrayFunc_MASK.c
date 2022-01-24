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
typedef  int /*<<< orphan*/  JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SUBTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  int i;
  JsonString jx;

  FUNC3(&jx, ctx);
  FUNC0(&jx, '[');
  for(i=0; i<argc; i++){
    FUNC1(&jx);
    FUNC2(&jx, argv[i]);
  }
  FUNC0(&jx, ']');
  FUNC4(&jx);
  FUNC5(ctx, JSON_SUBTYPE);
}