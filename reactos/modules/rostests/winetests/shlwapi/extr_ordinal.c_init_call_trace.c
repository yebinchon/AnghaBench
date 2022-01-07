
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int calls; scalar_t__ count; } ;
typedef TYPE_1__ call_trace_t ;
typedef int call_entry_t ;


 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;

__attribute__((used)) static void init_call_trace(call_trace_t *ctrace)
{
    ctrace->alloc = 10;
    ctrace->count = 0;
    ctrace->calls = HeapAlloc(GetProcessHeap(), 0, sizeof(call_entry_t) * ctrace->alloc);
}
