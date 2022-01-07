
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dbfd; scalar_t__ bRaw; int pDb; int pFd; } ;


 int O_RDONLY ;
 int SQLITE_FCNTL_FILE_POINTER ;
 int SQLITE_OK ;
 int assert (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 TYPE_1__ g ;
 scalar_t__ open (char const*,int ) ;
 int openDatabase (char const*,char const*) ;
 int sqlite3_file_control (int ,char*,int ,void*) ;
 int stderr ;

__attribute__((used)) static void fileOpen(const char *zPrg, const char *zName){
  assert( g.dbfd<0 );
  if( g.bRaw==0 ){
    int rc;
    void *pArg = (void *)(&g.pFd);
    g.pDb = openDatabase(zPrg, zName);
    rc = sqlite3_file_control(g.pDb, "main", SQLITE_FCNTL_FILE_POINTER, pArg);
    if( rc!=SQLITE_OK ){
      fprintf(stderr,
          "%s: failed to obtain fd for %s (SQLite too old?)\n", zPrg, zName
      );
      exit(1);
    }
  }else{
    g.dbfd = open(zName, O_RDONLY);
    if( g.dbfd<0 ){
      fprintf(stderr,"%s: can't open %s\n", zPrg, zName);
      exit(1);
    }
  }
}
