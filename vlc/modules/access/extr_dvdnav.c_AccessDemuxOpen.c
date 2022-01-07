
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int dvdnav_t ;
struct TYPE_3__ {char* psz_filepath; int psz_url; int * out; } ;
typedef TYPE_1__ demux_t ;


 int CommonOpen (int *,int *,int) ;
 scalar_t__ DVDNAV_STATUS_OK ;
 int DVD_READ_CACHE ;
 int LocaleFree (char const*) ;
 int ProbeDVD (char*) ;
 char* ToLocale (char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int dvdnav_close (int *) ;
 scalar_t__ dvdnav_open (int **,char const*) ;
 int free (char*) ;
 int msg_Warn (TYPE_1__*,char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int strncasecmp (int ,char*,int) ;
 scalar_t__ unlikely (int ) ;
 char* var_InheritString (int *,char*) ;

__attribute__((used)) static int AccessDemuxOpen ( vlc_object_t *p_this )
{
    demux_t *p_demux = (demux_t*)p_this;
    dvdnav_t *p_dvdnav = ((void*)0);
    char *psz_file = ((void*)0);
    const char *psz_path = ((void*)0);
    int i_ret = VLC_EGENERIC;
    bool forced = 0;

    if (p_demux->out == ((void*)0))
        return VLC_EGENERIC;

    if( !strncasecmp(p_demux->psz_url, "dvd", 3) )
        forced = 1;

    if( !p_demux->psz_filepath || !*p_demux->psz_filepath )
    {

        if( !forced )
            return VLC_EGENERIC;

        psz_file = var_InheritString( p_this, "dvd" );
    }
    else
        psz_file = strdup( p_demux->psz_filepath );
    if( unlikely(psz_file == ((void*)0)) )
        return VLC_EGENERIC;


    if( !forced && ProbeDVD( psz_file ) != VLC_SUCCESS )
        goto bailout;


    psz_path = ToLocale( psz_file );
    if( dvdnav_open( &p_dvdnav, psz_path ) != DVDNAV_STATUS_OK )
    {
        msg_Warn( p_demux, "cannot open DVD (%s)", psz_file);
        goto bailout;
    }

    i_ret = CommonOpen( p_this, p_dvdnav, !!DVD_READ_CACHE );
    if( i_ret != VLC_SUCCESS )
        dvdnav_close( p_dvdnav );

bailout:
    free( psz_file );
    if( psz_path )
        LocaleFree( psz_path );
    return i_ret;
}
