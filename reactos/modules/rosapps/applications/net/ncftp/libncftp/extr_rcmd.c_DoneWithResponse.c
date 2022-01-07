
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int (* printResponseProc ) (TYPE_2__* const,TYPE_1__*) ;} ;
struct TYPE_13__ {int printMode; int msg; } ;
typedef TYPE_1__* ResponsePtr ;
typedef int Response ;
typedef TYPE_2__* FTPCIPtr ;


 int DisposeLineListContents (int *) ;
 int SaveLastResponse (TYPE_2__* const,TYPE_1__*) ;
 int TraceResponse (TYPE_2__* const,TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int kResponseNoProc ;
 int kResponseNoSave ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_2__* const,TYPE_1__*) ;

void
DoneWithResponse(const FTPCIPtr cip, ResponsePtr rp)
{




 if (rp != ((void*)0)) {
  TraceResponse(cip, rp);
  if (cip->printResponseProc != 0) {
   if ((rp->printMode & kResponseNoProc) == 0)
    (*cip->printResponseProc)(cip, rp);
  }
  if ((rp->printMode & kResponseNoSave) == 0)
   SaveLastResponse(cip, rp);
  else
   DisposeLineListContents(&rp->msg);
  (void) memset(rp, 0, sizeof(Response));
  free(rp);
 }
}
