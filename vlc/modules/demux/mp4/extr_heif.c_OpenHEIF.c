
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_9__ {int fmt; } ;
struct heif_private_t {int i_image_duration; TYPE_1__ current; TYPE_5__* p_title; int * p_root; } ;
struct TYPE_10__ {int i_time_offset; int psz_name; } ;
typedef TYPE_2__ seekpoint_t ;
struct TYPE_11__ {int pf_control; int pf_demux; void* p_sys; int s; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_13__ {int i_flags; scalar_t__ psz_item_name; } ;
struct TYPE_12__ {int i_seekpoint; int seekpoint; } ;
typedef int MP4_Box_t ;


 int ATOM_ftyp ;
 int ATOM_infe ;
 TYPE_8__* BOXDATA (int *) ;
 int ControlHEIF ;
 int DemuxHEIF ;
 int HEIF_DEFAULT_DURATION ;
 int MP4_BoxDumpStructure (int ,int *) ;
 int * MP4_BoxGetRoot (int ) ;
 int MatchPureImage (int *,int *) ;
 int * NextAtom (int *,int ,char*,int *) ;
 int TAB_APPEND (int,int ,TYPE_2__*) ;
 int UNKNOWN_ES ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_FOURCC (int const,int const,int const,int const) ;
 int VLC_SUCCESS ;
 int VLC_TICK_FROM_SEC (int ) ;
 struct heif_private_t* calloc (int,int) ;
 int es_format_Init (int *,int ,int ) ;
 int free (struct heif_private_t*) ;
 int strdup (scalar_t__) ;
 int var_InheritFloat (TYPE_3__*,char*) ;
 TYPE_5__* vlc_input_title_New () ;
 TYPE_2__* vlc_seekpoint_New () ;
 int vlc_stream_Peek (int ,int const**,int) ;
 int vlc_tick_from_sec (int ) ;

int OpenHEIF( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    const uint8_t *p_peek;

    if( vlc_stream_Peek( p_demux->s, &p_peek, 12 ) < 12 )
        return VLC_EGENERIC;

    if( VLC_FOURCC( p_peek[4], p_peek[5], p_peek[6], p_peek[7] ) != ATOM_ftyp )
        return VLC_EGENERIC;

    switch( VLC_FOURCC( p_peek[8], p_peek[9], p_peek[10], p_peek[11] ) )
    {
        case 129:
        case 134:
        case 133:
        case 130:
        case 138:
        case 136:
            break;
        case 128:
        case 132:
        case 131:
        case 137:
        case 135:
        default:
            return VLC_EGENERIC;
    }

    MP4_Box_t *p_root = MP4_BoxGetRoot( p_demux->s );
    if( !p_root )
        return VLC_EGENERIC;

    MP4_BoxDumpStructure( p_demux->s, p_root );

    struct heif_private_t *p_sys = calloc( 1, sizeof(*p_sys) );
    p_demux->p_sys = (void *) p_sys;
    p_sys->p_root = p_root;
    p_sys->p_title = vlc_input_title_New();
    if( !p_sys->p_title )
    {
        free( p_sys );
        return VLC_ENOMEM;
    }

    p_sys->i_image_duration = vlc_tick_from_sec(var_InheritFloat( p_demux, "heif-image-duration" ));
    if( p_sys->i_image_duration <= 0 )
        p_sys->i_image_duration = VLC_TICK_FROM_SEC(HEIF_DEFAULT_DURATION);

    MP4_Box_t *p_infe = ((void*)0);
    while( (p_infe = NextAtom( p_root, ATOM_infe, "meta/iinf/infe", p_infe )) )
    {
        if( (BOXDATA(p_infe)->i_flags & 0x01) != 0x00 ||
                !MatchPureImage( p_infe, p_root ) )
            continue;
        seekpoint_t *s = vlc_seekpoint_New();
        if( s )
        {
            s->i_time_offset = p_sys->p_title->i_seekpoint * p_sys->i_image_duration;
            if( BOXDATA(p_infe)->psz_item_name )
                s->psz_name = strdup( BOXDATA(p_infe)->psz_item_name );
            TAB_APPEND( p_sys->p_title->i_seekpoint, p_sys->p_title->seekpoint, s );
        }
    }

    es_format_Init( &p_sys->current.fmt, UNKNOWN_ES, 0 );

    p_demux->pf_demux = DemuxHEIF;
    p_demux->pf_control = ControlHEIF;

    return VLC_SUCCESS;
}
