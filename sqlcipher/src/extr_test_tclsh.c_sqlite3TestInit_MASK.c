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
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
typedef  int /*<<< orphan*/  Tcl_CmdInfo ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  load_testfixture_extensions ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rlimit*) ; 

const char *FUNC4(Tcl_Interp *interp){
  extern int FUNC5(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp *);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC6(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0();
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp *);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
#if defined(SQLITE_ENABLE_SESSION) && defined(SQLITE_ENABLE_PREUPDATE_HOOK)
  extern int TestSession_Init(Tcl_Interp*);
#endif
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp *);
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp*);
#if defined(SQLITE_ENABLE_FTS3) || defined(SQLITE_ENABLE_FTS4)
  extern int Sqlitetestfts3_Init(Tcl_Interp *interp);
#endif
#ifdef SQLITE_ENABLE_ZIPVFS
  extern int Zipvfs_Init(Tcl_Interp*);
#endif
  extern int FUNC0(Tcl_Interp*);
  extern int FUNC0(Tcl_Interp *);
  extern int FUNC0(Tcl_Interp *);

  Tcl_CmdInfo cmdInfo;

  /* Since the primary use case for this binary is testing of SQLite,
  ** be sure to generate core files if we crash */
#if defined(unix)
  { struct rlimit x;
    FUNC2(RLIMIT_CORE, &x);
    x.rlim_cur = x.rlim_max;
    FUNC3(RLIMIT_CORE, &x);
  }
#endif /* unix */

  if( FUNC1(interp, "sqlite3", &cmdInfo)==0 ){
    FUNC5(interp);
  }
#ifdef SQLITE_ENABLE_ZIPVFS
  Zipvfs_Init(interp);
#endif
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0();
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);
#if defined(SQLITE_ENABLE_SESSION) && defined(SQLITE_ENABLE_PREUPDATE_HOOK)
  TestSession_Init(interp);
#endif
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);

#if defined(SQLITE_ENABLE_FTS3) || defined(SQLITE_ENABLE_FTS4)
  Sqlitetestfts3_Init(interp);
#endif
  FUNC0(interp);
  FUNC0(interp);
  FUNC0(interp);

  FUNC0(
      interp, "load_testfixture_extensions", load_testfixture_extensions,0,0
  );
  return 0;
}