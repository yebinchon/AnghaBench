
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cout; int ctrlSocketW; } ;
typedef TYPE_1__* FTPCIPtr ;


 int DM ;
 int Error (TYPE_1__* const,int ,char*) ;
 scalar_t__ IAC ;
 scalar_t__ IP ;
 int MSG_OOB ;
 int fflush (int *) ;
 int fprintf (int *,char*,int) ;
 int kDoPerror ;
 int send (int ,char*,int,int ) ;

void
SendTelnetInterrupt(const FTPCIPtr cip)
{
 char msg[4];





 if (cip->cout != ((void*)0))
  (void) fflush(cip->cout);

 msg[0] = (char) (unsigned char) IAC;
 msg[1] = (char) (unsigned char) IP;
 (void) send(cip->ctrlSocketW, msg, 2, 0);



 msg[0] = (char) (unsigned char) IAC;
 msg[1] = (char) (unsigned char) DM;
 if (send(cip->ctrlSocketW, msg, 2, MSG_OOB) != 2)
  Error(cip, kDoPerror, "Could not send an urgent message.\n");
}
