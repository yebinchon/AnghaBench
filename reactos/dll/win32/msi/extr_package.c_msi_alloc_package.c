
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cabinet_streams; int binaries; int patches; int sourcelist_media; int sourcelist_info; int RunningActions; int progids; int extensions; int mimes; int classes; int appids; int subscriptions; int folders; int tempfiles; int filepatches; int files; int features; int components; } ;
typedef TYPE_1__ MSIPACKAGE ;


 int MSIHANDLETYPE_PACKAGE ;
 int MSI_FreePackage ;
 TYPE_1__* alloc_msiobject (int ,int,int ) ;
 int list_init (int *) ;

__attribute__((used)) static MSIPACKAGE *msi_alloc_package( void )
{
    MSIPACKAGE *package;

    package = alloc_msiobject( MSIHANDLETYPE_PACKAGE, sizeof (MSIPACKAGE),
                               MSI_FreePackage );
    if( package )
    {
        list_init( &package->components );
        list_init( &package->features );
        list_init( &package->files );
        list_init( &package->filepatches );
        list_init( &package->tempfiles );
        list_init( &package->folders );
        list_init( &package->subscriptions );
        list_init( &package->appids );
        list_init( &package->classes );
        list_init( &package->mimes );
        list_init( &package->extensions );
        list_init( &package->progids );
        list_init( &package->RunningActions );
        list_init( &package->sourcelist_info );
        list_init( &package->sourcelist_media );
        list_init( &package->patches );
        list_init( &package->binaries );
        list_init( &package->cabinet_streams );
    }

    return package;
}
