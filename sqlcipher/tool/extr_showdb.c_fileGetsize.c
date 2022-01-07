
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_6__ {scalar_t__ bRaw; int dbfd; TYPE_2__* pFd; } ;
struct TYPE_5__ {TYPE_1__* pMethods; } ;
struct TYPE_4__ {int (* xFileSize ) (TYPE_2__*,scalar_t__*) ;} ;


 int SQLITE_OK ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int fstat (int ,struct stat*) ;
 TYPE_3__ g ;
 int stderr ;
 int stub1 (TYPE_2__*,scalar_t__*) ;

__attribute__((used)) static sqlite3_int64 fileGetsize(void){
  sqlite3_int64 res = 0;
  if( g.bRaw==0 ){
    int rc = g.pFd->pMethods->xFileSize(g.pFd, &res);
    if( rc!=SQLITE_OK ){
      fprintf(stderr, "error in xFileSize() - %d\n", rc);
      exit(1);
    }
  }else{
    struct stat sbuf;
    fstat(g.dbfd, &sbuf);
    res = (sqlite3_int64)(sbuf.st_size);
  }
  return res;
}
