
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int* bitsnum; int sign; } ;
typedef TYPE_2__ VARIANT_DI ;
struct TYPE_7__ {scalar_t__ m_lo; scalar_t__ m_hi; int exp_bias; int sign; } ;
struct TYPE_9__ {double d; TYPE_1__ i; } ;
typedef TYPE_3__ R8_FIELDS ;
typedef int HRESULT ;


 int DISP_E_BADVARTYPE ;
 int DISP_E_OVERFLOW ;
 int S_OK ;
 int TRUE ;
 int VARIANT_DI_clear (TYPE_2__*) ;
 int VARIANT_DI_normalize (TYPE_2__*,int,int ) ;

__attribute__((used)) static HRESULT VARIANT_DI_FromR8(double source, VARIANT_DI * dest)
{
    HRESULT hres = S_OK;
    R8_FIELDS fx;

    fx.d = source;


    if (fx.i.m_lo == 0 && fx.i.m_hi == 0 && fx.i.exp_bias == 0) {

        VARIANT_DI_clear(dest);
    } else if (fx.i.m_lo == 0 && fx.i.m_hi == 0 && fx.i.exp_bias == 0x7FF) {

        hres = DISP_E_OVERFLOW;
    } else if (fx.i.exp_bias == 0x7FF) {

        hres = DISP_E_BADVARTYPE;
    } else {
        int exponent2;
        VARIANT_DI_clear(dest);

        exponent2 = fx.i.exp_bias - 1023;
        dest->sign = fx.i.sign;


        dest->bitsnum[0] = fx.i.m_lo;
        dest->bitsnum[1] = fx.i.m_hi;
        dest->bitsnum[1] &= 0x000FFFFF;
        if (fx.i.exp_bias == 0) {

            exponent2++;
        } else {

            dest->bitsnum[1] |= 0x00100000;
        }




        exponent2 -= 52;

        hres = VARIANT_DI_normalize(dest, exponent2, TRUE);
    }

    return hres;
}
