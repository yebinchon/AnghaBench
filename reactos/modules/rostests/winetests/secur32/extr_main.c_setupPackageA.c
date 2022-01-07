
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SEC_CHAR ;
typedef int SECURITY_STATUS ;
typedef int PSecPkgInfoA ;


 int pQuerySecurityPackageInfoA (int *,int *) ;

__attribute__((used)) static SECURITY_STATUS setupPackageA(SEC_CHAR *p_package_name,
        PSecPkgInfoA *p_pkg_info)
{
    SECURITY_STATUS ret;

    ret = pQuerySecurityPackageInfoA( p_package_name, p_pkg_info);
    return ret;
}
