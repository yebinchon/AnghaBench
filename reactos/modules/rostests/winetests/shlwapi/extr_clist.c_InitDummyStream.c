
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ QuadPart; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct dummystream {int ref; TYPE_2__ pos; int item; void* failstatcall; scalar_t__ statcalls; scalar_t__ seekcalls; void* failwritesize; void* failwritecall; scalar_t__ writecalls; void* readreturnlarge; void* readbeyondend; void* failreadsize; void* failreadcall; scalar_t__ readcalls; TYPE_1__ IStream_iface; } ;


 void* FALSE ;
 int SHLWAPI_CLIST_items ;
 int iclvt ;

__attribute__((used)) static void InitDummyStream(struct dummystream *obj)
{
    obj->IStream_iface.lpVtbl = &iclvt;
    obj->ref = 1;
    obj->readcalls = 0;
    obj->failreadcall = FALSE;
    obj->failreadsize = FALSE;
    obj->readbeyondend = FALSE;
    obj->readreturnlarge = FALSE;
    obj->writecalls = 0;
    obj->failwritecall = FALSE;
    obj->failwritesize = FALSE;
    obj->seekcalls = 0;
    obj->statcalls = 0;
    obj->failstatcall = FALSE;
    obj->item = SHLWAPI_CLIST_items;
    obj->pos.QuadPart = 0;
}
