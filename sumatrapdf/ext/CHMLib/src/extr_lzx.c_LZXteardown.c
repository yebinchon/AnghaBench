
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LZXstate {struct LZXstate* window; } ;


 int free (struct LZXstate*) ;

void LZXteardown(struct LZXstate *pState)
{
    if (pState)
    {
        if (pState->window)
            free(pState->window);
        free(pState);
    }
}
