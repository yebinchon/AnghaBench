
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bRaw; int dbfd; scalar_t__ pFd; scalar_t__ pDb; } ;


 int close (int) ;
 TYPE_1__ g ;
 int sqlite3_close (scalar_t__) ;

__attribute__((used)) static void fileClose(){
  if( g.bRaw==0 ){
    sqlite3_close(g.pDb);
    g.pDb = 0;
    g.pFd = 0;
  }else{
    close(g.dbfd);
    g.dbfd = -1;
  }
}
