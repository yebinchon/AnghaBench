
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float i_value; scalar_t__ unit; } ;
typedef TYPE_1__ ttml_length_t ;


 scalar_t__ TTML_UNIT_PERCENT ;

__attribute__((used)) static void FillCoord( ttml_length_t v, int i_flag, float *p_val, int *pi_flags )
{
    *p_val = v.i_value;
    if( v.unit == TTML_UNIT_PERCENT )
    {
        *p_val /= 100.0;
        *pi_flags |= i_flag;
    }
    else *pi_flags &= ~i_flag;
}
