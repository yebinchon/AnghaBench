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
struct TYPE_5__ {int nCol; int /*<<< orphan*/  pSelect; } ;
struct TYPE_6__ {int /*<<< orphan*/  rc; TYPE_1__ objiter; } ;
typedef  TYPE_2__ sqlite3rbu ;

/* Variables and functions */
 int RBU_DELETE ; 
 int RBU_IDX_DELETE ; 
 int RBU_IDX_INSERT ; 
 int RBU_INSERT ; 
 int RBU_REPLACE ; 
 int RBU_UPDATE ; 
#define  SQLITE_INTEGER 129 
 int /*<<< orphan*/  SQLITE_NOMEM ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(sqlite3rbu *p, const char **pzMask){
  int iCol = p->objiter.nCol;     /* Index of rbu_control column */
  int res = 0;                    /* Return value */

  switch( FUNC3(p->objiter.pSelect, iCol) ){
    case SQLITE_INTEGER: {
      int iVal = FUNC1(p->objiter.pSelect, iCol);
      switch( iVal ){
        case 0: res = RBU_INSERT;     break;
        case 1: res = RBU_DELETE;     break;
        case 2: res = RBU_REPLACE;    break;
        case 3: res = RBU_IDX_DELETE; break;
        case 4: res = RBU_IDX_INSERT; break;
      }
      break;
    }

    case SQLITE_TEXT: {
      const unsigned char *z = FUNC2(p->objiter.pSelect, iCol);
      if( z==0 ){
        p->rc = SQLITE_NOMEM;
      }else{
        *pzMask = (const char*)z;
      }
      res = RBU_UPDATE;

      break;
    }

    default:
      break;
  }

  if( res==0 ){
    FUNC0(p);
  }
  return res;
}