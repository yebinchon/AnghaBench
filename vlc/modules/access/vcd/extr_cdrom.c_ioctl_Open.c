
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int i_vcdimage_handle; char* psz_dev; int i_device_handle; int toc; } ;
typedef TYPE_1__ vcddev_t ;
struct stat {int st_mode; } ;


 int O_NONBLOCK ;
 int O_RDONLY ;
 int OpenVCDImage (int *,char const*,TYPE_1__*) ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (int *,int ,int) ;
 int os2_vcd_open (int *,char const*,TYPE_1__*) ;
 scalar_t__ strdup (char const*) ;
 int strlen (char const*) ;
 int vlc_open (char const*,int) ;
 scalar_t__ vlc_stat (char const*,struct stat*) ;
 int win32_vcd_open (int *,char const*,TYPE_1__*) ;

vcddev_t *ioctl_Open( vlc_object_t *p_this, const char *psz_dev )
{
    int i_ret;
    int b_is_file;
    vcddev_t *p_vcddev;

    struct stat fileinfo;


    if( !psz_dev ) return ((void*)0);




    p_vcddev = malloc( sizeof(*p_vcddev) );
    if( p_vcddev == ((void*)0) )
        return ((void*)0);
    p_vcddev->i_vcdimage_handle = -1;
    p_vcddev->psz_dev = ((void*)0);
    memset( &p_vcddev->toc, 0, sizeof(p_vcddev->toc) );
    b_is_file = 1;
    if( vlc_stat( psz_dev, &fileinfo ) < 0 )
    {
        free( p_vcddev );
        return ((void*)0);
    }


    if( S_ISBLK( fileinfo.st_mode ) || S_ISCHR( fileinfo.st_mode ) )
        b_is_file = 0;


    if( b_is_file )
    {
        i_ret = OpenVCDImage( p_this, psz_dev, p_vcddev );
    }
    else
    {
        p_vcddev->i_device_handle = -1;
        p_vcddev->i_device_handle = vlc_open( psz_dev, O_RDONLY | O_NONBLOCK );
        i_ret = (p_vcddev->i_device_handle == -1) ? -1 : 0;

    }

    if( i_ret == 0 )
    {
        p_vcddev->psz_dev = (char *)strdup( psz_dev );
    }
    else
    {
        free( p_vcddev );
        p_vcddev = ((void*)0);
    }

    return p_vcddev;
}
