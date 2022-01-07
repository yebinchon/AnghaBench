
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stub_manager {int dummy; } ;
struct ifstub {int dummy; } ;
struct TYPE_4__ {int Data2; scalar_t__ Data4; } ;
typedef int OXID ;
typedef TYPE_1__ IPID ;
typedef int HRESULT ;
typedef int APARTMENT ;


 int RPC_E_INVALID_OBJECT ;
 int S_OK ;
 int TRACE (char*,int) ;
 int TRUE ;
 int * apartment_findfromoxid (int const,int ) ;
 int * apartment_findfromtid (int) ;
 int apartment_release (int *) ;
 struct stub_manager* get_stub_manager_from_ipid (int *,TYPE_1__ const*,struct ifstub**) ;

__attribute__((used)) static HRESULT ipid_to_ifstub(const IPID *ipid, APARTMENT **stub_apt,
                              struct stub_manager **stubmgr_ret, struct ifstub **ifstub)
{

    if (ipid->Data2 == 0xffff)
        *stub_apt = apartment_findfromoxid(*(const OXID *)ipid->Data4, TRUE);
    else
        *stub_apt = apartment_findfromtid(ipid->Data2);
    if (!*stub_apt)
    {
        TRACE("Couldn't find apartment corresponding to TID 0x%04x\n", ipid->Data2);
        return RPC_E_INVALID_OBJECT;
    }
    *stubmgr_ret = get_stub_manager_from_ipid(*stub_apt, ipid, ifstub);
    if (!*stubmgr_ret)
    {
        apartment_release(*stub_apt);
        *stub_apt = ((void*)0);
        return RPC_E_INVALID_OBJECT;
    }
    return S_OK;
}
