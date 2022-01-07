
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_6__ {size_t wRPCID; int Name; } ;
typedef TYPE_1__ SecPkgInfoW ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int RPC_STATUS ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ EnumerateSecurityPackagesW (size_t*,TYPE_1__**) ;
 int FreeContextBuffer (TYPE_1__*) ;
 int RPC_S_OK ;
 int RPC_S_SEC_PKG_ERROR ;
 int RPC_S_UNKNOWN_AUTHN_SERVICE ;
 scalar_t__ SEC_E_OK ;
 int TRACE (char*,int ,size_t) ;
 int WARN (char*,size_t) ;
 int debugstr_w (int ) ;

__attribute__((used)) static RPC_STATUS find_security_package(ULONG auth_type, SecPkgInfoW **packages_buf, SecPkgInfoW **ret)
{
    SECURITY_STATUS sec_status;
    SecPkgInfoW *packages;
    ULONG package_count;
    ULONG i;

    sec_status = EnumerateSecurityPackagesW(&package_count, &packages);
    if (sec_status != SEC_E_OK)
    {
        ERR("EnumerateSecurityPackagesW failed with error 0x%08x\n", sec_status);
        return RPC_S_SEC_PKG_ERROR;
    }

    for (i = 0; i < package_count; i++)
        if (packages[i].wRPCID == auth_type)
            break;

    if (i == package_count)
    {
        WARN("unsupported AuthnSvc %u\n", auth_type);
        FreeContextBuffer(packages);
        return RPC_S_UNKNOWN_AUTHN_SERVICE;
    }

    TRACE("found package %s for service %u\n", debugstr_w(packages[i].Name), auth_type);
    *packages_buf = packages;
    *ret = packages + i;
    return RPC_S_OK;
}
