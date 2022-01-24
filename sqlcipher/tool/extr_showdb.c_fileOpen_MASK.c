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
struct TYPE_2__ {scalar_t__ dbfd; scalar_t__ bRaw; int /*<<< orphan*/  pDb; int /*<<< orphan*/  pFd; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SQLITE_FCNTL_FILE_POINTER ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 TYPE_1__ g ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(const char *zPrg, const char *zName){
  FUNC0( g.dbfd<0 );
  if( g.bRaw==0 ){
    int rc;
    void *pArg = (void *)(&g.pFd);
    g.pDb = FUNC4(zPrg, zName);
    rc = FUNC5(g.pDb, "main", SQLITE_FCNTL_FILE_POINTER, pArg);
    if( rc!=SQLITE_OK ){
      FUNC2(stderr, 
          "%s: failed to obtain fd for %s (SQLite too old?)\n", zPrg, zName
      );
      FUNC1(1);
    }
  }else{
    g.dbfd = FUNC3(zName, O_RDONLY);
    if( g.dbfd<0 ){
      FUNC2(stderr,"%s: can't open %s\n", zPrg, zName);
      FUNC1(1);
    }
  }
}