
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
typedef char* longstring ;
typedef int command ;
struct TYPE_5__ {scalar_t__ ctrlSocketW; scalar_t__ firewallType; char* lastFTPCmdResultStr; int lastFTPCmdResultNum; int errNo; scalar_t__ ctrlTimeout; int user; } ;
typedef TYPE_1__* FTPCIPtr ;


 int Error (TYPE_1__* const,int ,char*) ;
 int PrintF (TYPE_1__* const,char*,char*) ;
 int STRNCAT (char*,char*) ;
 int SWrite (scalar_t__,char*,int ,int,int ) ;
 int SZ (int) ;
 scalar_t__ kClosedFileDescriptor ;
 int kDoPerror ;
 int kErrNotConnected ;
 int kErrSocketWriteFailed ;
 scalar_t__ kFirewallNotInUse ;
 int kNoErr ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;
 int vsprintf (char*,char const*,int ) ;

__attribute__((used)) static int
SendCommand(const FTPCIPtr cip, const char *cmdspec, va_list ap)
{
 longstring command;
 int result;

 if (cip->ctrlSocketW != kClosedFileDescriptor) {




  (void) vsprintf(command, cmdspec, ap);

  if ((strncmp(command, "PASS", SZ(4)) != 0) || ((strcmp(cip->user, "anonymous") == 0) && (cip->firewallType == kFirewallNotInUse)))
   PrintF(cip, "Cmd: %s\n", command);
  else
   PrintF(cip, "Cmd: %s\n", "PASS xxxxxxxx");
  (void) STRNCAT(command, "\r\n");
  cip->lastFTPCmdResultStr[0] = '\0';
  cip->lastFTPCmdResultNum = -1;

  result = SWrite(cip->ctrlSocketW, command, strlen(command), (int) cip->ctrlTimeout, 0);

  if (result < 0) {
   cip->errNo = kErrSocketWriteFailed;
   Error(cip, kDoPerror, "Could not write to control stream.\n");
   return (cip->errNo);
  }
  return (kNoErr);
 }
 return (kErrNotConnected);
}
