#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_str ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int nVertex; } ;
typedef  TYPE_1__ GeoPoly ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/  (*) (TYPE_1__*)) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  GeoPoly *p = FUNC2(context, argv[0], 0);
  if( p ){
    sqlite3 *db = FUNC3(context);
    sqlite3_str *x = FUNC9(db);
    int i;
    FUNC6(x, "[", 1);
    for(i=0; i<p->nVertex; i++){
      FUNC7(x, "[%!g,%!g],", FUNC0(p,i), FUNC1(p,i));
    }
    FUNC7(x, "[%!g,%!g]]", FUNC0(p,0), FUNC1(p,0));
    FUNC5(context, FUNC8(x), -1, sqlite3_free);
    FUNC4(p);
  }
}