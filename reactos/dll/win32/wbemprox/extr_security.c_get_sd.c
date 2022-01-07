
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sid_users_buffer ;
typedef int sid_network_buffer ;
typedef int sid_local_buffer ;
typedef int sid_admin_buffer ;
typedef int acl_buffer ;
typedef int SID ;
typedef int SECURITY_DESCRIPTOR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int ACL ;
typedef int ACCESS_ALLOWED_ACE ;


 int ACL_REVISION ;
 int ADS_RIGHT_ACTRL_DS_LIST ;
 int ADS_RIGHT_DS_CREATE_CHILD ;
 int ADS_RIGHT_DS_DELETE_CHILD ;
 int ADS_RIGHT_DS_READ_PROP ;
 int ADS_RIGHT_DS_SELF ;
 int ADS_RIGHT_DS_WRITE_PROP ;
 int AddAccessAllowedAceEx (int *,int ,int,int,int *) ;
 int CONTAINER_INHERIT_ACE ;
 int CreateWellKnownSid (int ,int *,int *,int*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int GetSecurityDescriptorLength (int *) ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int INHERITED_ACE ;
 int InitializeAcl (int *,int,int ) ;
 int InitializeSecurityDescriptor (int *,int ) ;
 int MakeSelfRelativeSD (int *,int *,int*) ;
 int READ_CONTROL ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int SECURITY_MAX_SID_SIZE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SetSecurityDescriptorDacl (int *,int ,int *,int ) ;
 int SetSecurityDescriptorGroup (int *,int *,int ) ;
 int SetSecurityDescriptorOwner (int *,int *,int ) ;
 int TRUE ;
 int WRITE_DAC ;
 int WinAuthenticatedUserSid ;
 int WinBuiltinAdministratorsSid ;
 int WinLocalServiceSid ;
 int WinNetworkServiceSid ;

__attribute__((used)) static HRESULT get_sd( SECURITY_DESCRIPTOR **sd, DWORD *size )
{
    BYTE sid_admin_buffer[SECURITY_MAX_SID_SIZE];
    SID *sid_admin = (SID*)sid_admin_buffer;
    BYTE sid_network_buffer[SECURITY_MAX_SID_SIZE];
    SID *sid_network = (SID*)sid_network_buffer;
    BYTE sid_local_buffer[SECURITY_MAX_SID_SIZE];
    SID *sid_local = (SID*)sid_local_buffer;
    BYTE sid_users_buffer[SECURITY_MAX_SID_SIZE];
    SID *sid_users = (SID*)sid_users_buffer;
    BYTE acl_buffer[sizeof(ACL) + 4 * (sizeof(ACCESS_ALLOWED_ACE) - sizeof(DWORD) + SECURITY_MAX_SID_SIZE)];
    ACL *acl = (ACL*)acl_buffer;
    DWORD sid_size;
    SECURITY_DESCRIPTOR absolute_sd;
    HRESULT hr = S_OK;

    sid_size = sizeof(sid_admin_buffer);
    CreateWellKnownSid( WinBuiltinAdministratorsSid, ((void*)0), sid_admin, &sid_size );

    sid_size = sizeof(sid_network_buffer);
    CreateWellKnownSid( WinNetworkServiceSid, ((void*)0), sid_network, &sid_size );

    sid_size = sizeof(sid_local_buffer);
    CreateWellKnownSid( WinLocalServiceSid, ((void*)0), sid_local, &sid_size );

    sid_size = sizeof(sid_users_buffer);
    CreateWellKnownSid( WinAuthenticatedUserSid, ((void*)0), sid_users, &sid_size );

    InitializeAcl( acl, sizeof(acl_buffer), ACL_REVISION );

    AddAccessAllowedAceEx( acl, ACL_REVISION, CONTAINER_INHERIT_ACE|INHERITED_ACE,
        ADS_RIGHT_DS_CREATE_CHILD|ADS_RIGHT_DS_DELETE_CHILD|ADS_RIGHT_ACTRL_DS_LIST|ADS_RIGHT_DS_SELF|
        ADS_RIGHT_DS_READ_PROP|ADS_RIGHT_DS_WRITE_PROP|READ_CONTROL|WRITE_DAC,
        sid_admin );

    AddAccessAllowedAceEx( acl, ACL_REVISION, CONTAINER_INHERIT_ACE|INHERITED_ACE,
        ADS_RIGHT_DS_CREATE_CHILD|ADS_RIGHT_DS_DELETE_CHILD|ADS_RIGHT_DS_READ_PROP,
        sid_network );

    AddAccessAllowedAceEx( acl, ACL_REVISION, CONTAINER_INHERIT_ACE|INHERITED_ACE,
        ADS_RIGHT_DS_CREATE_CHILD|ADS_RIGHT_DS_DELETE_CHILD|ADS_RIGHT_DS_READ_PROP,
        sid_local );

    AddAccessAllowedAceEx( acl, ACL_REVISION, CONTAINER_INHERIT_ACE|INHERITED_ACE,
        ADS_RIGHT_DS_CREATE_CHILD|ADS_RIGHT_DS_DELETE_CHILD|ADS_RIGHT_DS_READ_PROP,
        sid_users );

    InitializeSecurityDescriptor( &absolute_sd, SECURITY_DESCRIPTOR_REVISION );

    SetSecurityDescriptorOwner( &absolute_sd, sid_admin, TRUE );
    SetSecurityDescriptorGroup( &absolute_sd, sid_admin, TRUE );
    SetSecurityDescriptorDacl( &absolute_sd, TRUE, acl, TRUE );

    *size = GetSecurityDescriptorLength( &absolute_sd );

    *sd = HeapAlloc( GetProcessHeap(), 0, *size );
    if (!*sd)
        hr = E_OUTOFMEMORY;

    if (SUCCEEDED(hr))
    {
        if (!MakeSelfRelativeSD(&absolute_sd, *sd, size)) {
            HeapFree( GetProcessHeap(), 0, *sd );
     *sd = ((void*)0);
            hr = E_FAIL;
        }
    }

    return hr;
}
