
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iSysErrno; } ;
typedef TYPE_1__ sqlite3 ;



int sqlite3_system_errno(sqlite3 *db){
  return db ? db->iSysErrno : 0;
}
