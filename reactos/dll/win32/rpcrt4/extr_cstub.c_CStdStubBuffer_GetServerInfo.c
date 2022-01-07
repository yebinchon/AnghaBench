
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int const* pServerInfo; } ;
typedef int MIDL_SERVER_INFO ;
typedef int IRpcStubBuffer ;
typedef int CStdStubBuffer ;


 TYPE_1__ STUB_HEADER (int *) ;

const MIDL_SERVER_INFO *CStdStubBuffer_GetServerInfo(IRpcStubBuffer *iface)
{
  CStdStubBuffer *This = (CStdStubBuffer *)iface;
  return STUB_HEADER(This).pServerInfo;
}
