
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int count; int alloc; TYPE_2__* calls; } ;
typedef TYPE_1__ call_trace_t ;
struct TYPE_7__ {int id; void const** args; } ;
typedef TYPE_2__ call_entry_t ;


 int GetProcessHeap () ;
 TYPE_2__* HeapReAlloc (int ,int ,TYPE_2__*,int) ;

__attribute__((used)) static void add_call(call_trace_t *ctrace, int id, const void *arg0,
    const void *arg1, const void *arg2, const void *arg3, const void *arg4)
{
    call_entry_t call;

    call.id = id;
    call.args[0] = arg0;
    call.args[1] = arg1;
    call.args[2] = arg2;
    call.args[3] = arg3;
    call.args[4] = arg4;

    if (ctrace->count == ctrace->alloc)
    {
        ctrace->alloc *= 2;
        ctrace->calls = HeapReAlloc(GetProcessHeap(),0, ctrace->calls, ctrace->alloc*sizeof(call_entry_t));
    }

    ctrace->calls[ctrace->count++] = call;
}
