#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cabinet_streams; int /*<<< orphan*/  binaries; int /*<<< orphan*/  patches; int /*<<< orphan*/  sourcelist_media; int /*<<< orphan*/  sourcelist_info; int /*<<< orphan*/  RunningActions; int /*<<< orphan*/  progids; int /*<<< orphan*/  extensions; int /*<<< orphan*/  mimes; int /*<<< orphan*/  classes; int /*<<< orphan*/  appids; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  folders; int /*<<< orphan*/  tempfiles; int /*<<< orphan*/  filepatches; int /*<<< orphan*/  files; int /*<<< orphan*/  features; int /*<<< orphan*/  components; } ;
typedef  TYPE_1__ MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  MSIHANDLETYPE_PACKAGE ; 
 int /*<<< orphan*/  MSI_FreePackage ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MSIPACKAGE *FUNC2( void )
{
    MSIPACKAGE *package;

    package = FUNC0( MSIHANDLETYPE_PACKAGE, sizeof (MSIPACKAGE),
                               MSI_FreePackage );
    if( package )
    {
        FUNC1( &package->components );
        FUNC1( &package->features );
        FUNC1( &package->files );
        FUNC1( &package->filepatches );
        FUNC1( &package->tempfiles );
        FUNC1( &package->folders );
        FUNC1( &package->subscriptions );
        FUNC1( &package->appids );
        FUNC1( &package->classes );
        FUNC1( &package->mimes );
        FUNC1( &package->extensions );
        FUNC1( &package->progids );
        FUNC1( &package->RunningActions );
        FUNC1( &package->sourcelist_info );
        FUNC1( &package->sourcelist_media );
        FUNC1( &package->patches );
        FUNC1( &package->binaries );
        FUNC1( &package->cabinet_streams );
    }

    return package;
}