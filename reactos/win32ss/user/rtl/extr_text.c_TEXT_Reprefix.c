
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int before; unsigned int under; unsigned int after; unsigned int len; } ;
typedef TYPE_1__ ellipsis_data ;
typedef scalar_t__ WCHAR ;


 scalar_t__ const ALPHA_PREFIX ;
 scalar_t__ PREFIX ;
 int assert (int) ;

__attribute__((used)) static int TEXT_Reprefix (const WCHAR *str, unsigned int ns,
                          const ellipsis_data *pe)
{
    int result = -1;
    unsigned int i;
    unsigned int n = pe->before + pe->under + pe->after;
    assert (n <= ns);
    for (i = 0; i < n; i++, str++)
    {
        if (i == (unsigned int) pe->before)
        {

            if (ns < (unsigned int) pe->under) break;
            str += pe->under;
            ns -= pe->under;
            i += pe->under;
            if (!pe->after) break;
        }
        if (!ns) break;
        ns--;
        if (*str++ == PREFIX || *str == ALPHA_PREFIX)
        {
            str++;
            if (!ns) break;
            if (*str != PREFIX)
                result = (i < (unsigned int) pe->before || pe->under == 0) ? i : i - pe->under + pe->len;

            ns--;
        }
    }
    return result;
}
