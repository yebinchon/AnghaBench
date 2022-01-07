
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
typedef TYPE_1__ USER_MSG ;
typedef int UINT ;



__attribute__((used)) static const USER_MSG *SPY_Bsearch_Msg( const USER_MSG *msgs, UINT count, UINT code)
{
    int low = 0, high = count - 1;

    while (low <= high)
    {
        int idx = (low + high) / 2;
        if (msgs[idx].value == code) return msgs + idx;
        if (msgs[idx].value > code)
            high = idx - 1;
        else
            low = idx + 1;
    }
    return ((void*)0);
}
