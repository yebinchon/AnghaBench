
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct archive_entry {int dummy; } ;
struct TYPE_3__ {int b_seekable_archive; int * p_archive; scalar_t__ b_seekable_source; int p_obj; int p_entry; } ;
typedef TYPE_1__ private_sys_t ;
typedef int libarchive_t ;






 int SEEK_CUR ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int archive_entry_clone (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int archive_error_string (int *) ;
 int archive_read_data_skip (int *) ;
 int archive_read_next_header (int *,struct archive_entry**) ;
 scalar_t__ archive_seek_data (int *,int ,int ) ;
 int archive_set_error (int *,int const,char*,char const*) ;
 int msg_Warn (int ,char*,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int archive_seek_subentry( private_sys_t* p_sys, char const* psz_subentry )
{
    libarchive_t* p_arc = p_sys->p_archive;

    struct archive_entry* entry;
    int archive_status;

    while( !( archive_status = archive_read_next_header( p_arc, &entry ) ) )
    {
        char const* entry_path = archive_entry_pathname( entry );

        if( strcmp( entry_path, psz_subentry ) == 0 )
        {
            p_sys->p_entry = archive_entry_clone( entry );

            if( unlikely( !p_sys->p_entry ) )
                return VLC_ENOMEM;

            break;
        }

        archive_read_data_skip( p_arc );
    }

    switch( archive_status )
    {
        case 128:
            msg_Warn( p_sys->p_obj,
              "libarchive: %s", archive_error_string( p_arc ) );

        case 131:
        case 130:
        case 129:
            archive_set_error( p_arc, 130,
                "archive does not contain >>> %s <<<", psz_subentry );

            return VLC_EGENERIC;
    }



    if( p_sys->b_seekable_source )
    {
        if( archive_seek_data( p_sys->p_archive, 0, SEEK_CUR ) >= 0 )
            p_sys->b_seekable_archive = 1;
    }

    return VLC_SUCCESS;
}
