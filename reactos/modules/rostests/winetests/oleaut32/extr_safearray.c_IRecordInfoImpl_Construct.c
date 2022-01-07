
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {scalar_t__ sizeCalled; scalar_t__ clearCalled; int ref; TYPE_1__ IRecordInfo_iface; } ;
typedef TYPE_2__ IRecordInfoImpl ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int RecordInfoVtbl ;
 int START_REF_COUNT ;

__attribute__((used)) static IRecordInfoImpl *IRecordInfoImpl_Construct(void)
{
  IRecordInfoImpl *rec;

  rec = HeapAlloc(GetProcessHeap(), 0, sizeof(IRecordInfoImpl));
  rec->IRecordInfo_iface.lpVtbl = &RecordInfoVtbl;
  rec->ref = START_REF_COUNT;
  rec->clearCalled = 0;
  rec->sizeCalled = 0;
  return rec;
}
