#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int i_vcdimage_handle; char* psz_dev; int i_device_handle; int /*<<< orphan*/  toc; } ;
typedef  TYPE_1__ vcddev_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (char const*,int) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 

vcddev_t *FUNC12( vlc_object_t *p_this, const char *psz_dev )
{
    int i_ret;
    int b_is_file;
    vcddev_t *p_vcddev;
#if !defined( _WIN32 ) && !defined( __OS2__ )
    struct stat fileinfo;
#endif

    if( !psz_dev ) return NULL;

    /*
     *  Initialize structure with default values
     */
    p_vcddev = FUNC4( sizeof(*p_vcddev) );
    if( p_vcddev == NULL )
        return NULL;
    p_vcddev->i_vcdimage_handle = -1;
    p_vcddev->psz_dev = NULL;
    FUNC5( &p_vcddev->toc, 0, sizeof(p_vcddev->toc) );
    b_is_file = 1;

    /*
     *  Check if we are dealing with a device or a file (vcd image)
     */
#if defined( _WIN32 ) || defined( __OS2__ )
    if( (strlen( psz_dev ) == 2 && psz_dev[1] == ':') )
    {
        b_is_file = 0;
    }

#else
    if( FUNC10( psz_dev, &fileinfo ) < 0 )
    {
        FUNC3( p_vcddev );
        return NULL;
    }

    /* Check if this is a block/char device */
    if( FUNC1( fileinfo.st_mode ) || FUNC2( fileinfo.st_mode ) )
        b_is_file = 0;
#endif

    if( b_is_file )
    {
        i_ret = FUNC0( p_this, psz_dev, p_vcddev );
    }
    else
    {
        /*
         *  open the vcd device
         */

#ifdef _WIN32
        i_ret = win32_vcd_open( p_this, psz_dev, p_vcddev );
#elif defined( __OS2__ )
        i_ret = os2_vcd_open( p_this, psz_dev, p_vcddev );
#else
        p_vcddev->i_device_handle = -1;
        p_vcddev->i_device_handle = FUNC9( psz_dev, O_RDONLY | O_NONBLOCK );
        i_ret = (p_vcddev->i_device_handle == -1) ? -1 : 0;
#endif
    }

    if( i_ret == 0 )
    {
        p_vcddev->psz_dev = (char *)FUNC7( psz_dev );
    }
    else
    {
        FUNC3( p_vcddev );
        p_vcddev = NULL;
    }

    return p_vcddev;
}