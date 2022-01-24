#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct archive_entry {int dummy; } ;
struct TYPE_3__ {int b_seekable_archive; int /*<<< orphan*/ * p_archive; scalar_t__ b_seekable_source; int /*<<< orphan*/  p_obj; int /*<<< orphan*/  p_entry; } ;
typedef  TYPE_1__ private_sys_t ;
typedef  int /*<<< orphan*/  libarchive_t ;

/* Variables and functions */
#define  ARCHIVE_EOF 131 
#define  ARCHIVE_FATAL 130 
#define  ARCHIVE_RETRY 129 
#define  ARCHIVE_WARN 128 
 int /*<<< orphan*/  SEEK_CUR ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 char* FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct archive_entry**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int const,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10( private_sys_t* p_sys, char const* psz_subentry )
{
    libarchive_t* p_arc = p_sys->p_archive;

    struct archive_entry* entry;
    int archive_status;

    while( !( archive_status = FUNC4( p_arc, &entry ) ) )
    {
        char const* entry_path = FUNC1( entry );

        if( FUNC8( entry_path, psz_subentry ) == 0 )
        {
            p_sys->p_entry = FUNC0( entry );

            if( FUNC9( !p_sys->p_entry ) )
                return VLC_ENOMEM;

            break;
        }

        FUNC3( p_arc );
    }

    switch( archive_status )
    {
        case ARCHIVE_WARN:
            FUNC7( p_sys->p_obj,
              "libarchive: %s", FUNC2( p_arc ) );
            /* fall through */
        case ARCHIVE_EOF:
        case ARCHIVE_FATAL:
        case ARCHIVE_RETRY:
            FUNC6( p_arc, ARCHIVE_FATAL,
                "archive does not contain >>> %s <<<", psz_subentry );

            return VLC_EGENERIC;
    }

    /* check if seeking is supported */

    if( p_sys->b_seekable_source )
    {
        if( FUNC5( p_sys->p_archive, 0, SEEK_CUR ) >= 0 )
            p_sys->b_seekable_archive = true;
    }

    return VLC_SUCCESS;
}