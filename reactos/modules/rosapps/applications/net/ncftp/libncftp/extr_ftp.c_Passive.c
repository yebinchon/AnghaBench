
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sockaddr_in {int sin_port; int sin_addr; } ;
struct TYPE_15__ {int errNo; } ;
struct TYPE_13__ {TYPE_1__* first; } ;
struct TYPE_14__ {int codeType; TYPE_2__ msg; } ;
struct TYPE_12__ {char* line; } ;
typedef TYPE_3__* ResponsePtr ;
typedef TYPE_4__* FTPCIPtr ;


 int DoneWithResponse (TYPE_4__* const,TYPE_3__*) ;
 int Error (TYPE_4__* const,int ,char*,...) ;
 TYPE_3__* InitResponse () ;
 int RCmd (TYPE_4__* const,TYPE_3__*,char*) ;
 scalar_t__ isdigit (int) ;
 int kDontPerror ;
 int kErrMallocFailed ;
 int kErrPASVFailed ;
 int kNoErr ;
 int memcpy (int *,unsigned char*,size_t) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int
Passive(const FTPCIPtr cip, struct sockaddr_in *saddr, int *weird)
{
 ResponsePtr rp;
 int i[6], j;
 unsigned char n[6];
 char *cp;
 int result;

 rp = InitResponse();
 if (rp == ((void*)0)) {
  Error(cip, kDontPerror, "Malloc failed.\n");
  cip->errNo = kErrMallocFailed;
  return (cip->errNo);
 }

 result = RCmd(cip, rp, "PASV");
 if (result < 0)
  goto done;

 if (rp->codeType != 2) {

  cip->errNo = result = kErrPASVFailed;
  goto done;
 }
 for (cp = rp->msg.first->line; ; cp++) {
  if (*cp == '\0') {
   Error(cip, kDontPerror, "Cannot parse PASV response: %s\n", rp->msg.first->line);
   goto done;
  }
  if (isdigit((int) *cp))
   break;
 }

 if (sscanf(cp, "%d,%d,%d,%d,%d,%d",
   &i[0], &i[1], &i[2], &i[3], &i[4], &i[5]) != 6) {
  Error(cip, kDontPerror, "Cannot parse PASV response: %s\n", rp->msg.first->line);
  goto done;
 }

 for (j=0, *weird = 0; j<6; j++) {




  if ((i[j] < 0) || (i[j] > 255))
   *weird = *weird + 1;
  n[j] = (unsigned char) (i[j] & 0xff);
 }

 (void) memcpy(&saddr->sin_addr, &n[0], (size_t) 4);
 (void) memcpy(&saddr->sin_port, &n[4], (size_t) 2);

 result = kNoErr;
done:
 DoneWithResponse(cip, rp);
 return (result);
}
