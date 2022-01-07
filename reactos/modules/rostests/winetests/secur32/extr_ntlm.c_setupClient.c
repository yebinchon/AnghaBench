
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TimeStamp ;
struct TYPE_4__ {int cred; int id; } ;
typedef TYPE_1__ SspiData ;
typedef int SecPkgInfoA ;
typedef int SEC_CHAR ;
typedef scalar_t__ SECURITY_STATUS ;


 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 int getSecError (scalar_t__) ;
 int ok (int,char*,int ) ;
 scalar_t__ pAcquireCredentialsHandleA (int *,int *,int ,int *,int ,int *,int *,int *,int *) ;
 int pFreeContextBuffer (int *) ;
 scalar_t__ pQuerySecurityPackageInfoA (int *,int **) ;
 int setupBuffers (TYPE_1__*,int *) ;
 int trace (char*,...) ;

__attribute__((used)) static SECURITY_STATUS setupClient(SspiData *sspi_data, SEC_CHAR *provider)
{
    SECURITY_STATUS ret;
    TimeStamp ttl;
    SecPkgInfoA *sec_pkg_info;

    trace("Running setupClient\n");

    ret = pQuerySecurityPackageInfoA(provider, &sec_pkg_info);

    ok(ret == SEC_E_OK, "QuerySecurityPackageInfo returned %s\n", getSecError(ret));

    setupBuffers(sspi_data, sec_pkg_info);
    pFreeContextBuffer(sec_pkg_info);

    if((ret = pAcquireCredentialsHandleA(((void*)0), provider, SECPKG_CRED_OUTBOUND,
            ((void*)0), sspi_data->id, ((void*)0), ((void*)0), &sspi_data->cred, &ttl))
            != SEC_E_OK)
    {
        trace("AcquireCredentialsHandle() returned %s\n", getSecError(ret));
    }

    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));

    return ret;
}
