
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vlc_readdir_helper {int dummy; } ;
struct archive_entry {int dummy; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_directory_t ;
struct TYPE_7__ {int * p_archive; } ;
typedef TYPE_2__ private_sys_t ;
typedef int libarchive_t ;
typedef int input_item_node_t ;


 scalar_t__ AE_IFDIR ;
 int ARCHIVE_EOF ;
 int ITEM_LOCAL ;
 int ITEM_TYPE_FILE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_read_data_skip (int *) ;
 int archive_read_next_header (int *,struct archive_entry**) ;
 int free (char*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_readdir_helper_additem (struct vlc_readdir_helper*,char*,char const*,int *,int ,int ) ;
 int vlc_readdir_helper_finish (struct vlc_readdir_helper*,int) ;
 int vlc_readdir_helper_init (struct vlc_readdir_helper*,TYPE_1__*,int *) ;
 char* vlc_stream_extractor_CreateMRL (TYPE_1__*,char const*) ;

__attribute__((used)) static int ReadDir( stream_directory_t* p_directory, input_item_node_t* p_node )
{
    private_sys_t* p_sys = p_directory->p_sys;
    libarchive_t* p_arc = p_sys->p_archive;

    struct vlc_readdir_helper rdh;
    vlc_readdir_helper_init( &rdh, p_directory, p_node);
    struct archive_entry* entry;
    int archive_status;

    while( !( archive_status = archive_read_next_header( p_arc, &entry ) ) )
    {
        if( archive_entry_filetype( entry ) == AE_IFDIR )
            continue;

        char const* path = archive_entry_pathname( entry );

        if( unlikely( !path ) )
            break;

        char* mrl = vlc_stream_extractor_CreateMRL( p_directory, path );

        if( unlikely( !mrl ) )
            break;

        if( vlc_readdir_helper_additem( &rdh, mrl, path, ((void*)0), ITEM_TYPE_FILE,
                                        ITEM_LOCAL ) )
        {
            free( mrl );
            break;
        }
        free( mrl );

        if( archive_read_data_skip( p_arc ) )
            break;
    }

    vlc_readdir_helper_finish( &rdh, archive_status == ARCHIVE_EOF );
    return archive_status == ARCHIVE_EOF ? VLC_SUCCESS : VLC_EGENERIC;
}
