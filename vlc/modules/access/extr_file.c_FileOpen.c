
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct stat {int st_mode; } ;
struct TYPE_7__ {char* psz_location; char* psz_filepath; int psz_name; int * pf_seek; TYPE_2__* p_sys; int pf_control; int * pf_block; int pf_read; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int fd; int b_pace_control; } ;
typedef TYPE_2__ access_sys_t ;
typedef int DIR ;


 int DirInit (TYPE_1__*,int *) ;
 int F_GETFL ;
 int F_NOCACHE ;
 int F_RDAHEAD ;
 int F_SETFL ;
 int FileControl ;
 int * FileSeek ;
 scalar_t__ IsRemote (int,char*) ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int POSIX_FADV_NOREUSE ;
 int POSIX_FADV_WILLNEED ;
 int Read ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 int fcntl (int,int ,...) ;
 int * fdopendir (int) ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*,char*,...) ;
 int posix_fadvise (int,int ,int,int ) ;
 int strcasecmp (int ,char*) ;
 int strtol (char*,char**,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_close (int) ;
 int vlc_dup (int) ;
 TYPE_2__* vlc_obj_malloc (int *,int) ;
 int vlc_open (char*,int) ;
 int vlc_openat (int,char*,int) ;
 int vlc_strerror_c (int ) ;
 char* vlc_uri_decode_duplicate (char*) ;

int FileOpen( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;


    int fd = -1;

    if (!strcasecmp (p_access->psz_name, "fd"))
    {
        char *end;
        int oldfd = strtol (p_access->psz_location, &end, 10);

        if (*end == '\0')
            fd = vlc_dup (oldfd);
        else if (*end == '/' && end > p_access->psz_location)
        {
            char *name = vlc_uri_decode_duplicate (end - 1);
            if (name != ((void*)0))
            {
                name[0] = '.';
                fd = vlc_openat (oldfd, name, O_RDONLY | O_NONBLOCK);
                free (name);
            }
        }
    }
    else
    {
        if (unlikely(p_access->psz_filepath == ((void*)0)))
            return VLC_EGENERIC;
        fd = vlc_open (p_access->psz_filepath, O_RDONLY | O_NONBLOCK);
    }

    if (fd == -1)
    {
        msg_Err (p_access, "cannot open file %s (%s)",
                 p_access->psz_filepath ? p_access->psz_filepath
                                        : p_access->psz_location,
                 vlc_strerror_c(errno));
        return VLC_EGENERIC;
    }

    struct stat st;
    if (fstat (fd, &st))
    {
        msg_Err (p_access, "read error: %s", vlc_strerror_c(errno));
        goto error;
    }
    if (S_ISDIR (st.st_mode))
    {
        msg_Dbg (p_access, "ignoring directory");
        goto error;

    }

    access_sys_t *p_sys = vlc_obj_malloc(p_this, sizeof (*p_sys));
    if (unlikely(p_sys == ((void*)0)))
        goto error;
    p_access->pf_read = Read;
    p_access->pf_block = ((void*)0);
    p_access->pf_control = FileControl;
    p_access->p_sys = p_sys;
    p_sys->fd = fd;

    if (S_ISREG (st.st_mode) || S_ISBLK (st.st_mode))
    {
        p_access->pf_seek = FileSeek;
        p_sys->b_pace_control = 1;


        posix_fadvise (fd, 0, 4096, POSIX_FADV_WILLNEED);

        posix_fadvise (fd, 0, 0, POSIX_FADV_NOREUSE);
    }
    else
    {
        p_access->pf_seek = ((void*)0);
        p_sys->b_pace_control = strcasecmp (p_access->psz_name, "stream");
    }

    return VLC_SUCCESS;

error:
    vlc_close (fd);
    return VLC_EGENERIC;
}
