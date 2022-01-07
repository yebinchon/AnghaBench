
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VARTYPE ;
typedef int VARIANTARG ;
typedef int ULONG ;
struct TYPE_4__ {int dwInFlags; int cDig; } ;
typedef int OLECHAR ;
typedef TYPE_1__ NUMPARSE ;
typedef int LCID ;
typedef int HRESULT ;
typedef int BYTE ;


 int ARRAY_SIZE (int *) ;
 int NUMPRS_STD ;
 scalar_t__ SUCCEEDED (int ) ;
 int VARIANT_CopyData (int *,int,void*) ;
 int VarNumFromParseNum (TYPE_1__*,int *,int,int *) ;
 int VarParseNumFromStr (int *,int ,int ,TYPE_1__*,int *) ;

__attribute__((used)) static HRESULT VARIANT_NumberFromBstr(OLECHAR* pStrIn, LCID lcid, ULONG ulFlags,
                                      void* pOut, VARTYPE vt)
{
  VARIANTARG dstVar;
  HRESULT hRet;
  NUMPARSE np;
  BYTE rgb[1024];


  np.cDig = ARRAY_SIZE(rgb);
  np.dwInFlags = NUMPRS_STD;

  hRet = VarParseNumFromStr(pStrIn, lcid, ulFlags, &np, rgb);

  if (SUCCEEDED(hRet))
  {

    hRet = VarNumFromParseNum(&np, rgb, 1 << vt, &dstVar);
    if (SUCCEEDED(hRet))
      VARIANT_CopyData(&dstVar, vt, pOut);
  }
  return hRet;
}
