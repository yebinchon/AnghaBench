
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in {int sin_port; int sin_addr; } ;
struct TYPE_6__ {int errNo; } ;
typedef int * ResponsePtr ;
typedef TYPE_1__* FTPCIPtr ;


 int DoneWithResponse (TYPE_1__* const,int *) ;
 int Error (TYPE_1__* const,int ,char*) ;
 int * InitResponse () ;
 int RCmd (TYPE_1__* const,int *,char*,int ,int ,int ,int ,int ,int ) ;
 int UC (char) ;
 int kDontPerror ;
 int kErrMallocFailed ;
 int kErrPORTFailed ;
 int kNoErr ;

__attribute__((used)) static int
SendPort(const FTPCIPtr cip, struct sockaddr_in *saddr)
{
 char *a, *p;
 int result;
 ResponsePtr rp;

 rp = InitResponse();
 if (rp == ((void*)0)) {
  Error(cip, kDontPerror, "Malloc failed.\n");
  cip->errNo = kErrMallocFailed;
  return (cip->errNo);
 }


 a = (char *) &saddr->sin_addr;
 p = (char *) &saddr->sin_port;





 result = RCmd(cip, rp, "PORT %d,%d,%d,%d,%d,%d",
  (int) (((int) a[0]) & 0xff), (int) (((int) a[1]) & 0xff), (int) (((int) a[2]) & 0xff), (int) (((int) a[3]) & 0xff), (int) (((int) p[0]) & 0xff), (int) (((int) p[1]) & 0xff));

 if (result < 0) {
  return (result);
 } else if (result != 2) {

  DoneWithResponse(cip, rp);
  cip->errNo = kErrPORTFailed;
  return (cip->errNo);
 }
 DoneWithResponse(cip, rp);
 return (kNoErr);
}
