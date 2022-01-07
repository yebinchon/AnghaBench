
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_11__ {int Directory; TYPE_3__* assembly; } ;
struct TYPE_10__ {int const* tempdir; } ;
struct TYPE_9__ {void* TargetPath; void* File; int FileName; TYPE_6__* Component; } ;
struct TYPE_8__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFILE ;
typedef TYPE_3__ MSIASSEMBLY ;


 int TRACE (char*,int ,int ) ;
 int const* create_temp_dir (int ) ;
 int debugstr_w (void*) ;
 void* msi_build_directory_name (int,int const*,int ) ;
 int msi_free (void*) ;
 int * msi_get_target_folder (TYPE_1__*,int ) ;
 scalar_t__ msi_is_global_assembly (TYPE_6__*) ;

__attribute__((used)) static void set_target_path( MSIPACKAGE *package, MSIFILE *file )
{
    msi_free( file->TargetPath );
    if (msi_is_global_assembly( file->Component ))
    {
        MSIASSEMBLY *assembly = file->Component->assembly;

        if (!assembly->tempdir) assembly->tempdir = create_temp_dir( package->db );
        file->TargetPath = msi_build_directory_name( 2, assembly->tempdir, file->FileName );
    }
    else
    {
        const WCHAR *dir = msi_get_target_folder( package, file->Component->Directory );
        file->TargetPath = msi_build_directory_name( 2, dir, file->FileName );
    }

    TRACE("file %s resolves to %s\n", debugstr_w(file->File), debugstr_w(file->TargetPath));
}
