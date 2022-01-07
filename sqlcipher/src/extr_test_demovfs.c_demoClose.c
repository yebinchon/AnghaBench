
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int fd; int aBuffer; } ;
typedef TYPE_1__ DemoFile ;


 int close (int ) ;
 int demoFlushBuffer (TYPE_1__*) ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int demoClose(sqlite3_file *pFile){
  int rc;
  DemoFile *p = (DemoFile*)pFile;
  rc = demoFlushBuffer(p);
  sqlite3_free(p->aBuffer);
  close(p->fd);
  return rc;
}
