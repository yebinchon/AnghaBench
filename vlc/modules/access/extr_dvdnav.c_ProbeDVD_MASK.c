#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char uint16_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  iso_dsc ;

/* Variables and functions */
 int DVD_VIDEO_LB_LEN ; 
 scalar_t__ ENOENT ; 
 int FUNC0 (char*) ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ errno ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (char const*,int) ; 

__attribute__((used)) static int FUNC10( const char *psz_name )
{
    if( !*psz_name )
        /* Triggers libdvdcss autodetection */
        return VLC_SUCCESS;

    int fd = FUNC9( psz_name, O_RDONLY | O_NONBLOCK );
    if( fd == -1 )
#ifdef HAVE_FDOPENDIR
        return VLC_EGENERIC;
#else
        return (errno == ENOENT) ? VLC_EGENERIC : VLC_SUCCESS;
#endif

    int ret = VLC_EGENERIC;
    struct stat stat_info;

    if( FUNC4( fd, &stat_info ) == -1 )
         goto bailout;
    if( !FUNC3( stat_info.st_mode ) )
    {
        if( FUNC2( stat_info.st_mode ) || FUNC1( stat_info.st_mode ) )
            ret = VLC_SUCCESS; /* Let dvdnav_open() do the probing */
        goto bailout;
    }

    /* ISO 9660 volume descriptor */
    char iso_dsc[6];
    if( FUNC5( fd, 0x8000 + 1, SEEK_SET ) == -1
     || FUNC7( fd, iso_dsc, sizeof (iso_dsc) ) < (int)sizeof (iso_dsc)
     || FUNC6( iso_dsc, "CD001\x01", 6 ) )
        goto bailout;

    /* Try to find the anchor (2 bytes at LBA 256) */
    uint16_t anchor;

    if( FUNC5( fd, 256 * DVD_VIDEO_LB_LEN, SEEK_SET ) != -1
     && FUNC7( fd, &anchor, 2 ) == 2
     && FUNC0( &anchor ) == 2 )
        ret = VLC_SUCCESS; /* Found a potential anchor */
bailout:
    FUNC8( fd );
    return ret;
}