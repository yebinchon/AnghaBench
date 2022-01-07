
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* progress ) (TYPE_1__* const,int ) ;int t0; } ;
typedef int (* FTPProgressMeterProc ) (TYPE_1__* const,int ) ;
typedef TYPE_1__* FTPCIPtr ;


 int gettimeofday (int *,int *) ;
 int kPrInitMsg ;
 int stub1 (TYPE_1__* const,int ) ;

void
FTPStartIOTimer(const FTPCIPtr cip)
{
 (void) gettimeofday(&cip->t0, ((void*)0));
 if (cip->progress != (FTPProgressMeterProc) 0)
  (*cip->progress)(cip, kPrInitMsg);
}
