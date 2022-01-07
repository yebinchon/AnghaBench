
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; } ;
typedef TYPE_1__ quota_FILE ;


 int _commit (int ) ;
 int _fileno (int ) ;
 int fflush (int ) ;
 int fileno (int ) ;
 int fsync (int ) ;

int sqlite3_quota_fflush(quota_FILE *p, int doFsync){
  int rc;
  rc = fflush(p->f);
  if( rc==0 && doFsync ){






  }
  return rc!=0;
}
