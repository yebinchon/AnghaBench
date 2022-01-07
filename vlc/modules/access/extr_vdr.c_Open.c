
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct stat {int st_mode; } ;
struct TYPE_7__ {TYPE_2__* p_sys; int psz_filepath; int psz_name; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int fd; int file_sizes; int fps; scalar_t__ cur_seekpoint; } ;
typedef TYPE_2__ access_sys_t ;


 int ACCESS_SET_CALLBACKS (int ,int *,int ,int ) ;
 int ARRAY_INIT (int ) ;
 char* BaseName (int ) ;
 int Close (int *) ;
 int Control ;
 char const DIR_SEP_CHAR ;
 int Read ;
 int S_ISDIR (int ) ;
 int ScanDirectory (TYPE_1__*) ;
 int Seek ;
 int SwitchFile (TYPE_1__*,int ) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int sscanf (char const*,char*,char*,int*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ unlikely (int ) ;
 int var_InheritFloat (TYPE_1__*,char*) ;
 TYPE_2__* vlc_obj_calloc (int *,int,int) ;
 scalar_t__ vlc_stat (int ,struct stat*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;

    if( !p_access->psz_filepath )
        return VLC_EGENERIC;




    bool b_strict = strcmp( p_access->psz_name, "vdr" );




    if( b_strict )
    {
        char psz_extension[4];
        int i_length = 0;
        const char *psz_name = BaseName( p_access->psz_filepath );
        if( sscanf( psz_name, "%*u-%*u-%*u.%*u.%*u.%*u%*[-.]%*u.%3s%n",
            psz_extension, &i_length ) != 1 || strcasecmp( psz_extension, "rec" ) ||
            ( psz_name[i_length] != DIR_SEP_CHAR && psz_name[i_length] != '\0' ) )
            return VLC_EGENERIC;
    }


    struct stat st;
    if( vlc_stat( p_access->psz_filepath, &st ) ||
        !S_ISDIR( st.st_mode ) )
        return VLC_EGENERIC;

    access_sys_t *p_sys = vlc_obj_calloc( p_this, 1, sizeof( *p_sys ) );

    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_access->p_sys = p_sys;
    p_sys->fd = -1;
    p_sys->cur_seekpoint = 0;
    p_sys->fps = var_InheritFloat( p_access, "vdr-fps" );
    ARRAY_INIT( p_sys->file_sizes );


    if( !ScanDirectory( p_access ) ||
        !SwitchFile( p_access, 0 ) )
    {
        Close( p_this );
        return VLC_EGENERIC;
    }

    ACCESS_SET_CALLBACKS( Read, ((void*)0), Control, Seek );
    return VLC_SUCCESS;
}
