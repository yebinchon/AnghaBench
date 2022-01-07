
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stub_manager {TYPE_1__* apt; scalar_t__ refs; } ;
typedef scalar_t__ ULONG ;
struct TYPE_2__ {int cs; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static ULONG stub_manager_int_addref(struct stub_manager *This)
{
    ULONG refs;

    EnterCriticalSection(&This->apt->cs);
    refs = ++This->refs;
    LeaveCriticalSection(&This->apt->cs);

    TRACE("before %d\n", refs - 1);

    return refs;
}
