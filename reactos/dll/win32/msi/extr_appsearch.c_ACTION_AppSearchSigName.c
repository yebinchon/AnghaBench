
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSISIGNATURE ;
typedef int MSIPACKAGE ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 scalar_t__ ACTION_AppSearchComponents (int *,int **,int *) ;
 scalar_t__ ACTION_AppSearchDr (int *,int **,int *) ;
 scalar_t__ ACTION_AppSearchGetSignature (int *,int *,int ) ;
 scalar_t__ ACTION_AppSearchIni (int *,int **,int *) ;
 scalar_t__ ACTION_AppSearchReg (int *,int **,int *) ;
 scalar_t__ ERROR_SUCCESS ;

__attribute__((used)) static UINT ACTION_AppSearchSigName(MSIPACKAGE *package, LPCWSTR sigName,
 MSISIGNATURE *sig, LPWSTR *appValue)
{
    UINT rc;

    *appValue = ((void*)0);
    rc = ACTION_AppSearchGetSignature(package, sig, sigName);
    if (rc == ERROR_SUCCESS)
    {
        rc = ACTION_AppSearchComponents(package, appValue, sig);
        if (rc == ERROR_SUCCESS && !*appValue)
        {
            rc = ACTION_AppSearchReg(package, appValue, sig);
            if (rc == ERROR_SUCCESS && !*appValue)
            {
                rc = ACTION_AppSearchIni(package, appValue, sig);
                if (rc == ERROR_SUCCESS && !*appValue)
                    rc = ACTION_AppSearchDr(package, appValue, sig);
            }
        }
    }
    return rc;
}
