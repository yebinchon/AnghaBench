
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * FTPCIPtr ;


 int OpenMsg (char*,int) ;
 int gUnusedArg ;
 int kRedialStatusDialing ;
 int kRedialStatusSleeping ;
 int sleep (int) ;

__attribute__((used)) static void
NcFTPRedialStatusProc(const FTPCIPtr cipUNUSED, int mode, int val)
{
 gUnusedArg = (cipUNUSED != ((void*)0));
 if (mode == kRedialStatusDialing) {
  if (val > 0) {
   OpenMsg("Redialing (try %d)...", val);
   sleep(1);
  }
 } else if (mode == kRedialStatusSleeping) {
  OpenMsg("Sleeping %d seconds...", val);
 }
}
