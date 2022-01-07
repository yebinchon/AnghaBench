
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vars_off; int cVars; } ;
typedef TYPE_1__ SLTG_TypeInfoTail ;
typedef int SLTG_TypeInfoHeader ;
typedef int ITypeInfoImpl ;
typedef int BYTE ;


 int SLTG_DoVars (char*,char*,int *,int ,char const*,int *,int const*) ;

__attribute__((used)) static void SLTG_ProcessRecord(char *pBlk, ITypeInfoImpl *pTI,
          const char *pNameTable, SLTG_TypeInfoHeader *pTIHeader,
          const SLTG_TypeInfoTail *pTITail, const BYTE *hlp_strings)
{
  SLTG_DoVars(pBlk, pBlk + pTITail->vars_off, pTI, pTITail->cVars, pNameTable, ((void*)0), hlp_strings);
}
