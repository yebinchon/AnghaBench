
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* tempdir; struct TYPE_5__* display_name; struct TYPE_5__* application; struct TYPE_5__* manifest; struct TYPE_5__* feature; } ;
typedef TYPE_1__ MSIASSEMBLY ;


 int RemoveDirectoryW (TYPE_1__*) ;
 int msi_free (TYPE_1__*) ;

__attribute__((used)) static void free_assembly( MSIASSEMBLY *assembly )
{
    msi_free( assembly->feature );
    msi_free( assembly->manifest );
    msi_free( assembly->application );
    msi_free( assembly->display_name );
    if (assembly->tempdir) RemoveDirectoryW( assembly->tempdir );
    msi_free( assembly->tempdir );
    msi_free( assembly );
}
