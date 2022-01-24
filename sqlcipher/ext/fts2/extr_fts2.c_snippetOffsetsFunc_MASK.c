#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  pCursor ;
struct TYPE_6__ {int /*<<< orphan*/  nOffset; int /*<<< orphan*/  zOffset; } ;
struct TYPE_5__ {TYPE_2__ snippet; } ;
typedef  TYPE_1__ fulltext_cursor ;

/* Variables and functions */
 scalar_t__ SQLITE_BLOB ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *pContext,
  int argc,
  sqlite3_value **argv
){
  fulltext_cursor *pCursor;
  if( argc<1 ) return;
  if( FUNC7(argv[0])!=SQLITE_BLOB ||
      FUNC6(argv[0])!=sizeof(pCursor) ){
    FUNC3(pContext, "illegal first argument to offsets",-1);
  }else{
    FUNC0(&pCursor, FUNC5(argv[0]), sizeof(pCursor));
    FUNC1(pCursor);
    FUNC2(&pCursor->snippet);
    FUNC4(pContext,
                        pCursor->snippet.zOffset, pCursor->snippet.nOffset,
                        SQLITE_STATIC);
  }
}