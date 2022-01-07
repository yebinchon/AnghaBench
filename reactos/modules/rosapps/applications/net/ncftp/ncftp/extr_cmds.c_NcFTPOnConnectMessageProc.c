
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg; } ;
typedef TYPE_1__* ResponsePtr ;
typedef int * FTPCIPtr ;


 int OpenMsg (char*) ;
 int PrintResp (int *) ;
 int gUnusedArg ;
 int printf (char*) ;

__attribute__((used)) static void
NcFTPOnConnectMessageProc(const FTPCIPtr cipUNUSED, ResponsePtr rp)
{
 gUnusedArg = (cipUNUSED != ((void*)0));
 (void) printf("\n");
 PrintResp(&rp->msg);
 OpenMsg("Logging in...");
}
