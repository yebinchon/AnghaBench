
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef int LONG ;
typedef TYPE_1__ BitmapImpl ;


 int InterlockedCompareExchange (int*,int,int) ;

__attribute__((used)) static void BitmapImpl_ReleaseLock(BitmapImpl *This)
{
    while (1)
    {
        LONG prev_val = This->lock, new_val;
        if (prev_val == -1)
            new_val = 0;
        else
            new_val = prev_val - 1;
        if (prev_val == InterlockedCompareExchange(&This->lock, new_val, prev_val))
            break;
    }
}
