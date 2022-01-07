
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ MaxCount; } ;
typedef TYPE_1__* PMIDL_STUB_MESSAGE ;
typedef scalar_t__* PFORMAT_STRING ;
typedef int IID ;


 int ComputeConformance (TYPE_1__*,unsigned char*,scalar_t__*,int ) ;
 scalar_t__ FC_CONSTANT_IID ;
 scalar_t__ FC_IP ;
 int FIXME (char*,scalar_t__) ;
 int const IID_IUnknown ;
 int TRACE (char*,scalar_t__,...) ;
 int debugstr_guid (int const*) ;

__attribute__((used)) static const IID* get_ip_iid(PMIDL_STUB_MESSAGE pStubMsg, unsigned char *pMemory, PFORMAT_STRING pFormat)
{
  const IID *riid;
  if (!pFormat) return &IID_IUnknown;
  TRACE("format=%02x %02x\n", pFormat[0], pFormat[1]);
  if (pFormat[0] != FC_IP) FIXME("format=%d\n", pFormat[0]);
  if (pFormat[1] == FC_CONSTANT_IID) {
    riid = (const IID *)&pFormat[2];
  } else {
    ComputeConformance(pStubMsg, pMemory, pFormat+2, 0);
    riid = (const IID *)pStubMsg->MaxCount;
  }
  if (!riid) riid = &IID_IUnknown;
  TRACE("got %s\n", debugstr_guid(riid));
  return riid;
}
