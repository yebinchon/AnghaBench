
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int line; struct TYPE_7__* next; } ;
struct TYPE_5__ {TYPE_3__* first; } ;
struct TYPE_6__ {int code; TYPE_1__ msg; } ;
typedef TYPE_2__* ResponsePtr ;
typedef TYPE_3__* LinePtr ;
typedef int FTPCIPtr ;


 int PrintF (int const,char*,int ,...) ;

void
TraceResponse(const FTPCIPtr cip, ResponsePtr rp)
{
 LinePtr lp;

 if (rp != ((void*)0)) {
  lp = rp->msg.first;
  if (lp != ((void*)0)) {
   PrintF(cip, "%3d: %s\n", rp->code, lp->line);
   for (lp = lp->next; lp != ((void*)0); lp = lp->next)
    PrintF(cip, "     %s\n", lp->line);
  }
 }
}
