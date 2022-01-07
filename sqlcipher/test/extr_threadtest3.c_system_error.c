
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; char* zErr; } ;
typedef TYPE_1__ Error ;


 scalar_t__ sqlite3_malloc (int) ;
 int strerror_r (int,char*,int) ;

__attribute__((used)) static void system_error(Error *pErr, int iSys){
  pErr->rc = iSys;
  pErr->zErr = (char *)sqlite3_malloc(512);
  strerror_r(iSys, pErr->zErr, 512);
  pErr->zErr[511] = '\0';
}
