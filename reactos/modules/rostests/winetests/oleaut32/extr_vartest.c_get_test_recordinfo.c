
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; scalar_t__ recordcopy; scalar_t__ getsize; scalar_t__ recordclear; TYPE_1__ IRecordInfo_iface; } ;
typedef TYPE_2__ IRecordInfoImpl ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int RecordInfoVtbl ;

__attribute__((used)) static IRecordInfoImpl *get_test_recordinfo(void)
{
    IRecordInfoImpl *rec;

    rec = HeapAlloc(GetProcessHeap(), 0, sizeof(IRecordInfoImpl));
    rec->IRecordInfo_iface.lpVtbl = &RecordInfoVtbl;
    rec->ref = 1;
    rec->recordclear = 0;
    rec->getsize = 0;
    rec->recordcopy = 0;

    return rec;
}
