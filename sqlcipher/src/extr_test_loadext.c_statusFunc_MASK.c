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
typedef  int /*<<< orphan*/  aOp ;

/* Variables and functions */
 scalar_t__ SQLITE_INTEGER ; 
 int SQLITE_OK ; 
#define  SQLITE_STATUS_MALLOC_SIZE 133 
#define  SQLITE_STATUS_MEMORY_USED 132 
#define  SQLITE_STATUS_PAGECACHE_OVERFLOW 131 
#define  SQLITE_STATUS_PAGECACHE_USED 130 
#define  SQLITE_STATUS_SCRATCH_OVERFLOW 129 
#define  SQLITE_STATUS_SCRATCH_USED 128 
 scalar_t__ SQLITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int*,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  int op = 0, mx, cur, resetFlag, rc;
  if( FUNC7(argv[0])==SQLITE_INTEGER ){
    op = FUNC5(argv[0]);
  }else if( FUNC7(argv[0])==SQLITE_TEXT ){
    int i;
    const char *zName;
    static const struct {
      const char *zName;
      int op;
    } aOp[] = {
      { "MEMORY_USED",         SQLITE_STATUS_MEMORY_USED         },
      { "PAGECACHE_USED",      SQLITE_STATUS_PAGECACHE_USED      },
      { "PAGECACHE_OVERFLOW",  SQLITE_STATUS_PAGECACHE_OVERFLOW  },
      { "SCRATCH_USED",        SQLITE_STATUS_SCRATCH_USED        },
      { "SCRATCH_OVERFLOW",    SQLITE_STATUS_SCRATCH_OVERFLOW    },
      { "MALLOC_SIZE",         SQLITE_STATUS_MALLOC_SIZE         },
    };
    int nOp = sizeof(aOp)/sizeof(aOp[0]);
    zName = (const char*)FUNC6(argv[0]);
    for(i=0; i<nOp; i++){
      if( FUNC8(aOp[i].zName, zName)==0 ){
        op = aOp[i].op;
        break;
      }
    }
    if( i>=nOp ){
      char *zMsg = FUNC1("unknown status property: %s", zName);
      FUNC2(context, zMsg, -1);
      FUNC0(zMsg);
      return;
    }
  }else{
    FUNC2(context, "unknown status type", -1);
    return;
  }
  if( argc==2 ){
    resetFlag = FUNC5(argv[1]);
  }else{
    resetFlag = 0;
  }
  rc = FUNC4(op, &cur, &mx, resetFlag);
  if( rc!=SQLITE_OK ){
    char *zMsg = FUNC1("sqlite3_status(%d,...) returns %d", op, rc);
    FUNC2(context, zMsg, -1);
    FUNC0(zMsg);
    return;
  } 
  if( argc==2 ){
    FUNC3(context, mx);
  }else{
    FUNC3(context, cur);
  }
}