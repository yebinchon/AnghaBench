#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vlc_readdir_helper {int dummy; } ;
struct archive_entry {int dummy; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_directory_t ;
struct TYPE_7__ {int /*<<< orphan*/ * p_archive; } ;
typedef  TYPE_2__ private_sys_t ;
typedef  int /*<<< orphan*/  libarchive_t ;
typedef  int /*<<< orphan*/  input_item_node_t ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ITEM_LOCAL ; 
 int /*<<< orphan*/  ITEM_TYPE_FILE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 char* FUNC1 (struct archive_entry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct vlc_readdir_helper*,char*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_readdir_helper*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vlc_readdir_helper*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_1__*,char const*) ; 

__attribute__((used)) static int FUNC10( stream_directory_t* p_directory, input_item_node_t* p_node )
{
    private_sys_t* p_sys = p_directory->p_sys;
    libarchive_t* p_arc = p_sys->p_archive;

    struct vlc_readdir_helper rdh;
    FUNC8( &rdh, p_directory, p_node);
    struct archive_entry* entry;
    int archive_status;

    while( !( archive_status = FUNC3( p_arc, &entry ) ) )
    {
        if( FUNC0( entry ) == AE_IFDIR )
            continue;

        char const* path = FUNC1( entry );

        if( FUNC5( !path ) )
            break;

        char*       mrl  = FUNC9( p_directory, path );

        if( FUNC5( !mrl ) )
            break;

        if( FUNC6( &rdh, mrl, path, NULL, ITEM_TYPE_FILE,
                                        ITEM_LOCAL ) )
        {
            FUNC4( mrl );
            break;
        }
        FUNC4( mrl );

        if( FUNC2( p_arc ) )
            break;
    }

    FUNC7( &rdh, archive_status == ARCHIVE_EOF );
    return archive_status == ARCHIVE_EOF ? VLC_SUCCESS : VLC_EGENERIC;
}