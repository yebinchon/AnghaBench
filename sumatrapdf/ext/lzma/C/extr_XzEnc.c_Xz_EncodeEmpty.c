
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef scalar_t__ SRes ;
typedef int ISeqOutStream ;
typedef TYPE_1__ CXzStream ;


 scalar_t__ SZ_OK ;
 int Xz_Construct (TYPE_1__*) ;
 int Xz_Free (TYPE_1__*,int *) ;
 scalar_t__ Xz_WriteFooter (TYPE_1__*,int *) ;
 scalar_t__ Xz_WriteHeader (int ,int *) ;
 int g_Alloc ;

SRes Xz_EncodeEmpty(ISeqOutStream *outStream)
{
  SRes res;
  CXzStream xz;
  Xz_Construct(&xz);
  res = Xz_WriteHeader(xz.flags, outStream);
  if (res == SZ_OK)
    res = Xz_WriteFooter(&xz, outStream);
  Xz_Free(&xz, &g_Alloc);
  return res;
}
