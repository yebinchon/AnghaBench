
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int * pWalFd; } ;
typedef TYPE_1__ Wal ;



sqlite3_file *sqlite3WalFile(Wal *pWal){
  return pWal->pWalFd;
}
