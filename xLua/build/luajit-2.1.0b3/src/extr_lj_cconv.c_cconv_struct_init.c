
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int TValue ;
typedef scalar_t__ MSize ;
typedef int CType ;
typedef int CTState ;
typedef int CTSize ;


 int cconv_err_initov (int *,int *) ;
 int cconv_substruct_init (int *,int *,int *,int *,scalar_t__,scalar_t__*) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void cconv_struct_init(CTState *cts, CType *d, CTSize sz, uint8_t *dp,
         TValue *o, MSize len)
{
  MSize i = 0;
  memset(dp, 0, sz);
  cconv_substruct_init(cts, d, dp, o, len, &i);
  if (i < len)
    cconv_err_initov(cts, d);
}
