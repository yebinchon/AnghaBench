
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int psz_service; } ;
typedef TYPE_2__ intf_sys_t ;
typedef int * SC_HANDLE ;


 int CloseServiceHandle (int *) ;
 int DELETE ;
 int DeleteService (int *) ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenServiceA (int *,int ,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*,...) ;

__attribute__((used)) static int NTServiceUninstall( intf_thread_t *p_intf )
{
    intf_sys_t *p_sys = p_intf->p_sys;

    SC_HANDLE handle = OpenSCManager( ((void*)0), ((void*)0), SC_MANAGER_ALL_ACCESS );
    if( handle == ((void*)0) )
    {
        msg_Err( p_intf,
                 "could not connect to Services Control Manager database" );
        return VLC_EGENERIC;
    }


    SC_HANDLE service = OpenServiceA( handle, p_sys->psz_service, DELETE );
    if( service == ((void*)0) )
    {
        msg_Err( p_intf, "could not open service" );
        CloseServiceHandle( handle );
        return VLC_EGENERIC;
    }


    if( !DeleteService( service ) )
    {
        msg_Err( p_intf, "could not delete service \"%s\"",
                 p_sys->psz_service );
    }
    else
    {
        msg_Dbg( p_intf, "service deleted successfuly" );
    }

    CloseServiceHandle( service );
    CloseServiceHandle( handle );

    return VLC_SUCCESS;
}
