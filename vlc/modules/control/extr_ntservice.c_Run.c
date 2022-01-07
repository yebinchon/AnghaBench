
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
typedef int WCHAR ;
struct TYPE_14__ {int * member_1; int * member_0; } ;
struct TYPE_12__ {scalar_t__ psz_service; } ;
typedef TYPE_3__ SERVICE_TABLE_ENTRY ;
typedef int * LPSERVICE_MAIN_FUNCTION ;


 int NTServiceInstall (TYPE_2__*) ;
 int NTServiceUninstall (TYPE_2__*) ;
 int ServiceDispatch ;
 scalar_t__ StartServiceCtrlDispatcher (TYPE_3__*) ;
 scalar_t__ TEXT (int ) ;
 int VLCSERVICENAME ;
 int free (scalar_t__) ;
 int libvlc_Quit (int ) ;
 int msg_Err (TYPE_2__*,char*) ;
 TYPE_2__* p_global_intf ;
 scalar_t__ strdup (int ) ;
 scalar_t__ var_InheritBool (TYPE_2__*,char*) ;
 scalar_t__ var_InheritString (TYPE_2__*,char*) ;
 int vlc_object_instance (TYPE_2__*) ;

__attribute__((used)) static void *Run( void *data )
{
    intf_thread_t *p_intf = data;
    SERVICE_TABLE_ENTRY dispatchTable[] =
    {
        { (WCHAR*) TEXT(VLCSERVICENAME), (LPSERVICE_MAIN_FUNCTION) &ServiceDispatch },
        { ((void*)0), ((void*)0) }
    };

    p_global_intf = p_intf;
    p_intf->p_sys->psz_service = var_InheritString( p_intf, "ntservice-name" );
    p_intf->p_sys->psz_service = p_intf->p_sys->psz_service ?
        p_intf->p_sys->psz_service : strdup(VLCSERVICENAME);

    if( var_InheritBool( p_intf, "ntservice-install" ) )
    {
        NTServiceInstall( p_intf );
        return ((void*)0);
    }

    if( var_InheritBool( p_intf, "ntservice-uninstall" ) )
    {
        NTServiceUninstall( p_intf );
        return ((void*)0);
    }

    if( StartServiceCtrlDispatcher( dispatchTable ) == 0 )
    {
        msg_Err( p_intf, "StartServiceCtrlDispatcher failed" );
    }

    free( p_intf->p_sys->psz_service );


    libvlc_Quit( vlc_object_instance(p_intf) );
    return ((void*)0);
}
