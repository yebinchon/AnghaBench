
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_manager {int dummy; } ;
struct ifstub {int dummy; } ;
typedef int IPID ;
typedef int HRESULT ;
typedef int APARTMENT ;


 int ipid_to_ifstub (int const*,int **,struct stub_manager**,struct ifstub**) ;

__attribute__((used)) static HRESULT ipid_to_stub_manager(const IPID *ipid, APARTMENT **stub_apt, struct stub_manager **stub)
{
    struct ifstub *ifstub;
    return ipid_to_ifstub(ipid, stub_apt, stub, &ifstub);
}
