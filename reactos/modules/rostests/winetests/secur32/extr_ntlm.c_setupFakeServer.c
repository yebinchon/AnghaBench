
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SspiData ;
typedef int SecPkgInfoA ;
typedef int SEC_CHAR ;
typedef scalar_t__ SECURITY_STATUS ;


 scalar_t__ SEC_E_OK ;
 int getSecError (scalar_t__) ;
 int ok (int,char*,int ) ;
 int pFreeContextBuffer (int *) ;
 scalar_t__ pQuerySecurityPackageInfoA (int *,int **) ;
 scalar_t__ setupBuffers (int *,int *) ;
 int trace (char*) ;

__attribute__((used)) static SECURITY_STATUS setupFakeServer(SspiData *sspi_data, SEC_CHAR *provider)
{
    SECURITY_STATUS ret;
    SecPkgInfoA *sec_pkg_info;

    trace("Running setupFakeServer\n");

    ret = pQuerySecurityPackageInfoA(provider, &sec_pkg_info);

    ok(ret == SEC_E_OK, "QuerySecurityPackageInfo returned %s\n", getSecError(ret));

    ret = setupBuffers(sspi_data, sec_pkg_info);
    pFreeContextBuffer(sec_pkg_info);

    return ret;
}
