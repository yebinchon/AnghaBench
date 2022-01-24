#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_2__ {size_t eType; int /*<<< orphan*/  iRowid; scalar_t__ pPtr; int /*<<< orphan*/  iCnt; } ;
typedef  TYPE_1__ carray_cursor ;

/* Variables and functions */
#define  CARRAY_COLUMN_COUNT 134 
#define  CARRAY_COLUMN_CTYPE 133 
#define  CARRAY_COLUMN_POINTER 132 
#define  CARRAY_DOUBLE 131 
#define  CARRAY_INT32 130 
#define  CARRAY_INT64 129 
#define  CARRAY_TEXT 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 char const** azType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
  sqlite3_vtab_cursor *cur,   /* The cursor */
  sqlite3_context *ctx,       /* First argument to sqlite3_result_...() */
  int i                       /* Which column to return */
){
  carray_cursor *pCur = (carray_cursor*)cur;
  sqlite3_int64 x = 0;
  switch( i ){
    case CARRAY_COLUMN_POINTER:   return SQLITE_OK;
    case CARRAY_COLUMN_COUNT:     x = pCur->iCnt;   break;
    case CARRAY_COLUMN_CTYPE: {
      FUNC3(ctx, azType[pCur->eType], -1, SQLITE_STATIC);
      return SQLITE_OK;
    }
    default: {
      switch( pCur->eType ){
        case CARRAY_INT32: {
          int *p = (int*)pCur->pPtr;
          FUNC1(ctx, p[pCur->iRowid-1]);
          return SQLITE_OK;
        }
        case CARRAY_INT64: {
          sqlite3_int64 *p = (sqlite3_int64*)pCur->pPtr;
          FUNC2(ctx, p[pCur->iRowid-1]);
          return SQLITE_OK;
        }
        case CARRAY_DOUBLE: {
          double *p = (double*)pCur->pPtr;
          FUNC0(ctx, p[pCur->iRowid-1]);
          return SQLITE_OK;
        }
        case CARRAY_TEXT: {
          const char **p = (const char**)pCur->pPtr;
          FUNC3(ctx, p[pCur->iRowid-1], -1, SQLITE_TRANSIENT);
          return SQLITE_OK;
        }
      }
    }
  }
  FUNC2(ctx, x);
  return SQLITE_OK;
}