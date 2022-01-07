
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ connected; } ;
struct TYPE_12__ {char** cargv; int cargc; } ;
struct TYPE_11__ {int flags; int minargs; int maxargs; int (* proc ) (int,char**,TYPE_1__*,TYPE_2__* const) ;} ;
typedef TYPE_1__* CommandPtr ;
typedef TYPE_2__* ArgvInfoPtr ;


 TYPE_1__* GetCommandByName (char*,int ) ;
 int PrintCmdUsage (TYPE_1__*) ;
 TYPE_7__ gConn ;
 TYPE_1__* kAmbiguousCommand ;
 int kCmdMustBeConnected ;
 int kCmdMustBeDisconnected ;
 TYPE_1__* kNoCommand ;
 int kNoMax ;
 int kNoMin ;
 int printf (char*,char*) ;
 int stub1 (int,char**,TYPE_1__*,TYPE_2__* const) ;

__attribute__((used)) static int
DoCommand(const ArgvInfoPtr aip)
{
 CommandPtr cmdp;
 int flags;
 int cargc, cargcm1;

 cmdp = GetCommandByName(aip->cargv[0], 0);
 if (cmdp == kAmbiguousCommand) {
  (void) printf("%s: ambiguous command name.\n", aip->cargv[0]);
  return (-1);
 } else if (cmdp == kNoCommand) {
  (void) printf("%s: no such command.\n", aip->cargv[0]);
  return (-1);
 }

 cargc = aip->cargc;
 cargcm1 = cargc - 1;
 flags = cmdp->flags;

 if (((flags & kCmdMustBeConnected) != 0) && (gConn.connected == 0)) {
  (void) printf("%s: must be connected to do that.\n", aip->cargv[0]);
 } else if (((flags & kCmdMustBeDisconnected) != 0) && (gConn.connected != 0)) {
  (void) printf("%s: must be disconnected to do that.\n", aip->cargv[0]);
 } else if ((cmdp->minargs != kNoMin) && (cmdp->minargs > cargcm1)) {
  PrintCmdUsage(cmdp);
 } else if ((cmdp->maxargs != kNoMax) && (cmdp->maxargs < cargcm1)) {
  PrintCmdUsage(cmdp);
 } else {
  (*cmdp->proc)(cargc, aip->cargv, cmdp, aip);
 }
 return (0);
}
