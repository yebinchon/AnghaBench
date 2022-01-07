
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int size; int file_sizes; } ;
typedef TYPE_2__ access_sys_t ;


 int ARRAY_APPEND (int ,scalar_t__) ;
 int FILE_COUNT ;
 char* GetFilePath (TYPE_1__*,int ) ;
 int S_ISREG (int ) ;
 int errno ;
 int free (char*) ;
 int msg_Dbg (TYPE_1__*,char*,char*,...) ;
 scalar_t__ vlc_stat (char*,struct stat*) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static bool ImportNextFile( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    char *psz_path = GetFilePath( p_access, FILE_COUNT );
    if( !psz_path )
        return 0;

    struct stat st;
    if( vlc_stat( psz_path, &st ) )
    {
        msg_Dbg( p_access, "could not stat %s: %s", psz_path,
                 vlc_strerror_c(errno) );
        free( psz_path );
        return 0;
    }
    if( !S_ISREG( st.st_mode ) )
    {
        msg_Dbg( p_access, "%s is not a regular file", psz_path );
        free( psz_path );
        return 0;
    }
    msg_Dbg( p_access, "%s exists", psz_path );
    free( psz_path );

    ARRAY_APPEND( p_sys->file_sizes, st.st_size );
    p_sys->size += st.st_size;

    return 1;
}
