
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stub_manager {TYPE_1__* apt; } ;
typedef void* USHORT ;
struct TYPE_7__ {void* Data3; void* Data2; int Data1; } ;
struct TYPE_6__ {scalar_t__ tid; int ipidc; } ;
typedef TYPE_2__ IPID ;
typedef int HRESULT ;


 int ERR (char*,struct stub_manager*) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GetCurrentProcessId () ;
 int InterlockedIncrement (int *) ;
 int S_OK ;
 int UuidCreate (TYPE_2__*) ;
 int UuidCreateNil (TYPE_2__*) ;

__attribute__((used)) static inline HRESULT generate_ipid(struct stub_manager *m, IPID *ipid)
{
    HRESULT hr;
    hr = UuidCreate(ipid);
    if (FAILED(hr))
    {
        ERR("couldn't create IPID for stub manager %p\n", m);
        UuidCreateNil(ipid);
        return hr;
    }

    ipid->Data1 = InterlockedIncrement(&m->apt->ipidc);
    ipid->Data2 = (USHORT)m->apt->tid;
    ipid->Data3 = (USHORT)GetCurrentProcessId();
    return S_OK;
}
