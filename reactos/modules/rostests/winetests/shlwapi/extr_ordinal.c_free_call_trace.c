
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int calls; } ;
typedef TYPE_1__ call_trace_t ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

__attribute__((used)) static void free_call_trace(const call_trace_t *ctrace)
{
    HeapFree(GetProcessHeap(), 0, ctrace->calls);
}
