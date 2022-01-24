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
struct SLConn {scalar_t__ fd; int /*<<< orphan*/  iLog; } ;
struct TYPE_2__ {scalar_t__* zPrefix; char* zIdx; int /*<<< orphan*/  bReuse; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ENVIRONMENT_VARIABLE1_NAME ; 
 int /*<<< orphan*/  ENVIRONMENT_VARIABLE2_NAME ; 
 int /*<<< orphan*/  SQLITE_IOERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,...) ; 
 TYPE_1__ sqllogglobal ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(struct SLConn *p){
  /* If the log file has not yet been opened, open it now. */
  if( p->fd==0 ){
    char *zLog;

    /* If it is still NULL, have global.zPrefix point to a copy of 
    ** environment variable $ENVIRONMENT_VARIABLE1_NAME.  */
    if( sqllogglobal.zPrefix[0]==0 ){
      FILE *fd;
      char *zVar = FUNC4(ENVIRONMENT_VARIABLE1_NAME);
      if( zVar==0 || FUNC9(zVar)+10>=(sizeof(sqllogglobal.zPrefix)) ) return;
      FUNC8(sizeof(sqllogglobal.zPrefix), sqllogglobal.zPrefix,
                        "%s/sqllog_%05d", zVar, FUNC3());
      FUNC8(sizeof(sqllogglobal.zIdx), sqllogglobal.zIdx,
                        "%s.idx", sqllogglobal.zPrefix);
      if( FUNC4(ENVIRONMENT_VARIABLE2_NAME) ){
        sqllogglobal.bReuse = FUNC0(FUNC4(ENVIRONMENT_VARIABLE2_NAME));
      }
      fd = FUNC2(sqllogglobal.zIdx, "w");
      if( fd ) FUNC1(fd);
    }

    /* Open the log file */
    zLog = FUNC7("%s_%05d.sql", sqllogglobal.zPrefix, p->iLog);
    p->fd = FUNC2(zLog, "w");
    FUNC5(zLog);
    if( p->fd==0 ){
      FUNC6(SQLITE_IOERR, "sqllogOpenlog(): Failed to open log file");
    }
  }
}