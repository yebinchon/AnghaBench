
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sspi_data {int cred; int id; } ;
typedef int TimeStamp ;
typedef int SecPkgInfoA ;
typedef int SEC_CHAR ;
typedef scalar_t__ SECURITY_STATUS ;


 scalar_t__ AcquireCredentialsHandleA (int *,int *,int ,int *,int ,int *,int *,int *,int *) ;
 int FreeContextBuffer (int *) ;
 scalar_t__ QuerySecurityPackageInfoA (int *,int **) ;
 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 int ok (int,char*,scalar_t__) ;
 int setup_buffers (struct sspi_data*,int *) ;
 int trace (char*) ;

__attribute__((used)) static SECURITY_STATUS setup_client( struct sspi_data *data, SEC_CHAR *provider )
{
    SECURITY_STATUS ret;
    SecPkgInfoA *info;
    TimeStamp ttl;

    trace( "setting up client\n" );

    ret = QuerySecurityPackageInfoA( provider, &info );
    ok( ret == SEC_E_OK, "QuerySecurityPackageInfo returned %08x\n", ret );

    setup_buffers( data, info );
    FreeContextBuffer( info );

    ret = AcquireCredentialsHandleA( ((void*)0), provider, SECPKG_CRED_OUTBOUND, ((void*)0),
                                     data->id, ((void*)0), ((void*)0), &data->cred, &ttl );
    ok( ret == SEC_E_OK, "AcquireCredentialsHandleA returned %08x\n", ret );
    return ret;
}
