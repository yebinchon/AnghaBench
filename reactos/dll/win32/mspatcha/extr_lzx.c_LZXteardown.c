
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LZXstate {struct LZXstate* window; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct LZXstate*) ;

void LZXteardown(struct LZXstate *pState)
{
    if (pState)
    {
        HeapFree(GetProcessHeap(), 0, pState->window);
        HeapFree(GetProcessHeap(), 0, pState);
    }
}
