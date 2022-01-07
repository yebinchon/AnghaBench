
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_cmd_r; scalar_t__ i_cmd_w; struct TYPE_6__* psz_file; int p_filew; int p_filer; struct TYPE_6__* p_cmd; } ;
typedef TYPE_1__ ts_storage_t ;
typedef int ts_cmd_t ;


 int CmdClean (int *) ;
 int TsStoragePopCmd (TYPE_1__*,int *,int) ;
 int fclose (int ) ;
 int free (TYPE_1__*) ;
 int vlc_unlink (TYPE_1__*) ;

__attribute__((used)) static void TsStorageDelete( ts_storage_t *p_storage )
{
    while( p_storage->i_cmd_r < p_storage->i_cmd_w )
    {
        ts_cmd_t cmd;

        TsStoragePopCmd( p_storage, &cmd, 1 );

        CmdClean( &cmd );
    }
    free( p_storage->p_cmd );

    fclose( p_storage->p_filer );
    fclose( p_storage->p_filew );




    free( p_storage );
}
