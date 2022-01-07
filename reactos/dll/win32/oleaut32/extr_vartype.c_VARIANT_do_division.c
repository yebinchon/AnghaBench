
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ scale; int* bitsnum; scalar_t__ sign; } ;
typedef TYPE_1__ VARIANT_DI ;
typedef int ULONGLONG ;
typedef scalar_t__ HRESULT ;
typedef int DECIMAL ;
typedef int BOOL ;


 unsigned int ARRAY_SIZE (int*) ;
 scalar_t__ DEC_MAX_SCALE ;
 scalar_t__ S_OK ;
 int VARIANT_DIFromDec (int const*,TYPE_1__*) ;
 scalar_t__ VARIANT_DI_div (TYPE_1__*,TYPE_1__*,TYPE_1__*,int ) ;
 int VARIANT_DecFromDI (TYPE_1__*,int *) ;
 unsigned char VARIANT_int_divbychar (int*,unsigned int,int) ;
 int VARIANT_int_iszero (int*,unsigned int) ;
 int WARN (char*,...) ;

__attribute__((used)) static HRESULT VARIANT_do_division(const DECIMAL *pDecLeft, const DECIMAL *pDecRight, DECIMAL *pDecOut,
        BOOL round)
{
  HRESULT hRet = S_OK;
  VARIANT_DI di_left, di_right, di_result;
  HRESULT divresult;

  VARIANT_DIFromDec(pDecLeft, &di_left);
  VARIANT_DIFromDec(pDecRight, &di_right);
  divresult = VARIANT_DI_div(&di_left, &di_right, &di_result, round);
  if (divresult != S_OK)
  {

      hRet = divresult;
  }
  else
  {
      hRet = S_OK;

      if (di_result.scale > DEC_MAX_SCALE)
      {
        unsigned char remainder = 0;





        WARN("result scale is %u, scaling (with loss of significant digits)...\n",
            di_result.scale);
        while (di_result.scale > DEC_MAX_SCALE &&
               !VARIANT_int_iszero(di_result.bitsnum, ARRAY_SIZE(di_result.bitsnum)))
        {
            remainder = VARIANT_int_divbychar(di_result.bitsnum, ARRAY_SIZE(di_result.bitsnum), 10);
            di_result.scale--;
        }
        if (di_result.scale > DEC_MAX_SCALE)
        {
            WARN("result underflowed, setting to 0\n");
            di_result.scale = 0;
            di_result.sign = 0;
        }
        else if (remainder >= 5)
        {
            unsigned int i;
            for (remainder = 1, i = 0; i < ARRAY_SIZE(di_result.bitsnum) && remainder; i++) {
                ULONGLONG digit = di_result.bitsnum[i] + 1;
                remainder = (digit > 0xFFFFFFFF) ? 1 : 0;
                di_result.bitsnum[i] = digit & 0xFFFFFFFF;
            }
        }
      }
      VARIANT_DecFromDI(&di_result, pDecOut);
  }
  return hRet;
}
