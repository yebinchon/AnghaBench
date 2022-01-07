
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* progress ) (TYPE_1__* const,int ) ;scalar_t__ nextProgressUpdate; } ;
typedef int (* FTPProgressMeterProc ) (TYPE_1__* const,int ) ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPUpdateIOTimer (TYPE_1__* const) ;
 int kPrEndMsg ;
 int stub1 (TYPE_1__* const,int ) ;

void
FTPStopIOTimer(const FTPCIPtr cip)
{
 cip->nextProgressUpdate = 0;
 FTPUpdateIOTimer(cip);
 if (cip->progress != (FTPProgressMeterProc) 0)
  (*cip->progress)(cip, kPrEndMsg);
}
