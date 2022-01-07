
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* first; } ;
struct TYPE_9__ {char* lastFTPCmdResultStr; int lastFTPCmdResultNum; TYPE_6__ lastFTPCmdResultLL; } ;
struct TYPE_8__ {int code; TYPE_6__ msg; } ;
struct TYPE_7__ {int * line; } ;
typedef TYPE_2__* ResponsePtr ;
typedef TYPE_3__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_6__*) ;
 int STRNCPY (char*,int *) ;

__attribute__((used)) static void
SaveLastResponse(const FTPCIPtr cip, ResponsePtr rp)
{
 if (rp == ((void*)0)) {
  cip->lastFTPCmdResultStr[0] = '\0';
  cip->lastFTPCmdResultNum = -1;
  DisposeLineListContents(&cip->lastFTPCmdResultLL);
 } else if ((rp->msg.first == ((void*)0)) || (rp->msg.first->line == ((void*)0))) {
  cip->lastFTPCmdResultStr[0] = '\0';
  cip->lastFTPCmdResultNum = rp->code;
  DisposeLineListContents(&cip->lastFTPCmdResultLL);
 } else {
  (void) STRNCPY(cip->lastFTPCmdResultStr, rp->msg.first->line);
  cip->lastFTPCmdResultNum = rp->code;


  DisposeLineListContents(&cip->lastFTPCmdResultLL);


  cip->lastFTPCmdResultLL = rp->msg;
 }
}
