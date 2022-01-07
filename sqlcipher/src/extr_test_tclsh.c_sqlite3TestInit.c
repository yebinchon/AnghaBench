
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; int rlim_cur; } ;
typedef int Tcl_Interp ;
typedef int Tcl_CmdInfo ;


 int RLIMIT_CORE ;
 int Tcl_CreateObjCommand (int *,char*,int ,int ,int ) ;
 scalar_t__ Tcl_GetCommandInfo (int *,char*,int *) ;
 int getrlimit (int ,struct rlimit*) ;
 int load_testfixture_extensions ;
 int setrlimit (int ,struct rlimit*) ;

const char *sqlite3TestInit(Tcl_Interp *interp){
  extern int Sqlite3_Init(Tcl_Interp*);
  extern int Sqliteconfig_Init(Tcl_Interp*);
  extern int Sqlitetest1_Init(Tcl_Interp*);
  extern int Sqlitetest2_Init(Tcl_Interp*);
  extern int Sqlitetest3_Init(Tcl_Interp*);
  extern int Sqlitetest4_Init(Tcl_Interp*);
  extern int Sqlitetest5_Init(Tcl_Interp*);
  extern int Sqlitetest6_Init(Tcl_Interp*);
  extern int Sqlitetest7_Init(Tcl_Interp*);
  extern int Sqlitetest8_Init(Tcl_Interp*);
  extern int Sqlitetest9_Init(Tcl_Interp*);
  extern int Sqlitetestasync_Init(Tcl_Interp*);
  extern int Sqlitetest_autoext_Init(Tcl_Interp*);
  extern int Sqlitetest_blob_Init(Tcl_Interp*);
  extern int Sqlitetest_demovfs_Init(Tcl_Interp *);
  extern int Sqlitetest_func_Init(Tcl_Interp*);
  extern int Sqlitetest_hexio_Init(Tcl_Interp*);
  extern int Sqlitetest_init_Init(Tcl_Interp*);
  extern int Sqlitetest_malloc_Init(Tcl_Interp*);
  extern int Sqlitetest_mutex_Init(Tcl_Interp*);
  extern int Sqlitetestschema_Init(Tcl_Interp*);
  extern int Sqlitetestsse_Init(Tcl_Interp*);
  extern int Sqlitetesttclvar_Init(Tcl_Interp*);
  extern int Sqlitetestfs_Init(Tcl_Interp*);
  extern int SqlitetestThread_Init(Tcl_Interp*);
  extern int SqlitetestOnefile_Init();
  extern int SqlitetestOsinst_Init(Tcl_Interp*);
  extern int Sqlitetestbackup_Init(Tcl_Interp*);
  extern int Sqlitetestintarray_Init(Tcl_Interp*);
  extern int Sqlitetestvfs_Init(Tcl_Interp *);
  extern int Sqlitetestrtree_Init(Tcl_Interp*);
  extern int Sqlitequota_Init(Tcl_Interp*);
  extern int Sqlitemultiplex_Init(Tcl_Interp*);
  extern int SqliteSuperlock_Init(Tcl_Interp*);
  extern int SqlitetestSyscall_Init(Tcl_Interp*);



  extern int Md5_Init(Tcl_Interp*);
  extern int Fts5tcl_Init(Tcl_Interp *);
  extern int SqliteRbu_Init(Tcl_Interp*);
  extern int Sqlitetesttcl_Init(Tcl_Interp*);






  extern int TestExpert_Init(Tcl_Interp*);
  extern int Sqlitetest_window_Init(Tcl_Interp *);
  extern int Sqlitetestvdbecov_Init(Tcl_Interp *);

  Tcl_CmdInfo cmdInfo;




  { struct rlimit x;
    getrlimit(RLIMIT_CORE, &x);
    x.rlim_cur = x.rlim_max;
    setrlimit(RLIMIT_CORE, &x);
  }


  if( Tcl_GetCommandInfo(interp, "sqlite3", &cmdInfo)==0 ){
    Sqlite3_Init(interp);
  }



  Md5_Init(interp);
  Sqliteconfig_Init(interp);
  Sqlitetest1_Init(interp);
  Sqlitetest2_Init(interp);
  Sqlitetest3_Init(interp);
  Sqlitetest4_Init(interp);
  Sqlitetest5_Init(interp);
  Sqlitetest6_Init(interp);
  Sqlitetest7_Init(interp);
  Sqlitetest8_Init(interp);
  Sqlitetest9_Init(interp);
  Sqlitetestasync_Init(interp);
  Sqlitetest_autoext_Init(interp);
  Sqlitetest_blob_Init(interp);
  Sqlitetest_demovfs_Init(interp);
  Sqlitetest_func_Init(interp);
  Sqlitetest_hexio_Init(interp);
  Sqlitetest_init_Init(interp);
  Sqlitetest_malloc_Init(interp);
  Sqlitetest_mutex_Init(interp);
  Sqlitetestschema_Init(interp);
  Sqlitetesttclvar_Init(interp);
  Sqlitetestfs_Init(interp);
  SqlitetestThread_Init(interp);
  SqlitetestOnefile_Init();
  SqlitetestOsinst_Init(interp);
  Sqlitetestbackup_Init(interp);
  Sqlitetestintarray_Init(interp);
  Sqlitetestvfs_Init(interp);
  Sqlitetestrtree_Init(interp);
  Sqlitequota_Init(interp);
  Sqlitemultiplex_Init(interp);
  SqliteSuperlock_Init(interp);
  SqlitetestSyscall_Init(interp);



  Fts5tcl_Init(interp);
  SqliteRbu_Init(interp);
  Sqlitetesttcl_Init(interp);




  TestExpert_Init(interp);
  Sqlitetest_window_Init(interp);
  Sqlitetestvdbecov_Init(interp);

  Tcl_CreateObjCommand(
      interp, "load_testfixture_extensions", load_testfixture_extensions,0,0
  );
  return 0;
}
