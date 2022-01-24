#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startupInfo ;
typedef  int /*<<< orphan*/  processInfo ;
struct TYPE_8__ {int iTrace; scalar_t__ zVfs; scalar_t__ bSync; scalar_t__ bSqlTrace; int /*<<< orphan*/  zDbFile; int /*<<< orphan*/  argv0; int /*<<< orphan*/  db; } ;
struct TYPE_7__ {int cb; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_1__ PROCESS_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_4__ g ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char*,...) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(int iClient){
  FUNC6("INSERT OR IGNORE INTO client VALUES(%d,0)", iClient);
  if( FUNC7(g.db) ){
    char *zSys;
    int rc;
    zSys = FUNC9("%s \"%s\" --client %d --trace %d",
                 g.argv0, g.zDbFile, iClient, g.iTrace);
    if( g.bSqlTrace ){
      zSys = FUNC9("%z --sqltrace", zSys);
    }
    if( g.bSync ){
      zSys = FUNC9("%z --sync", zSys);
    }
    if( g.zVfs ){
      zSys = FUNC9("%z --vfs \"%s\"", zSys, g.zVfs);
    }
    if( g.iTrace>=2 ) FUNC4("system('%q')", zSys);
#if !defined(_WIN32)
    zSys = FUNC9("%z &", zSys);
    rc = FUNC10(zSys);
    if( rc ) FUNC3("system() fails with error code %d", rc);
#else
    {
      STARTUPINFOA startupInfo;
      PROCESS_INFORMATION processInfo;
      memset(&startupInfo, 0, sizeof(startupInfo));
      startupInfo.cb = sizeof(startupInfo);
      memset(&processInfo, 0, sizeof(processInfo));
      rc = CreateProcessA(NULL, zSys, NULL, NULL, FALSE, 0, NULL, NULL,
                        &startupInfo, &processInfo);
      if( rc ){
        CloseHandle(processInfo.hThread);
        CloseHandle(processInfo.hProcess);
      }else{
        errorMessage("CreateProcessA() fails with error code %lu",
                     GetLastError());
      }
    }
#endif
    FUNC8(zSys);
  }
}