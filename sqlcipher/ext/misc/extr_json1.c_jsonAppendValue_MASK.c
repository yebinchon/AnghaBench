#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_6__ {int bErr; int /*<<< orphan*/  pCtx; } ;
typedef  TYPE_1__ JsonString ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SUBTYPE ; 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  JsonString *p,                 /* Append to this JSON string */
  sqlite3_value *pValue          /* Value to append */
){
  switch( FUNC7(pValue) ){
    case SQLITE_NULL: {
      FUNC0(p, "null", 4);
      break;
    }
    case SQLITE_INTEGER:
    case SQLITE_FLOAT: {
      const char *z = (const char*)FUNC6(pValue);
      u32 n = (u32)FUNC4(pValue);
      FUNC0(p, z, n);
      break;
    }
    case SQLITE_TEXT: {
      const char *z = (const char*)FUNC6(pValue);
      u32 n = (u32)FUNC4(pValue);
      if( FUNC5(pValue)==JSON_SUBTYPE ){
        FUNC0(p, z, n);
      }else{
        FUNC1(p, z, n);
      }
      break;
    }
    default: {
      if( p->bErr==0 ){
        FUNC3(p->pCtx, "JSON cannot hold BLOB values", -1);
        p->bErr = 2;
        FUNC2(p);
      }
      break;
    }
  }
}