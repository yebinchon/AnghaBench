
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int uint8_t ;
struct TYPE_14__ {scalar_t__ i_codec; } ;
struct TYPE_15__ {int b_configured; TYPE_11__ fmt; scalar_t__ es; int i_id; } ;
typedef TYPE_1__ ps_track_t ;
struct TYPE_16__ {int i_version; int i_es; int uniqueextdesc; TYPE_3__* es; } ;
typedef TYPE_2__ ps_psm_t ;
struct TYPE_17__ {int i_type; int i_id; int desc; } ;
typedef TYPE_3__ ps_es_t ;
typedef int es_out_t ;


 int GetWBE (int const*) ;
 int PS_STREAM_ID_EXTENDED ;
 int const PS_STREAM_ID_MAP ;
 int PS_TK_COUNT ;
 int UNKNOWN_ES ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int assert (int) ;
 int es_format_Clean (TYPE_11__*) ;
 int es_format_Init (TYPE_11__*,int ,int ) ;
 scalar_t__ es_out_Add (int *,TYPE_11__*) ;
 int es_out_Del (int *,scalar_t__) ;
 int ps_parse_descriptors (int const*,size_t,int *) ;
 int ps_psm_destroy (TYPE_2__*) ;
 scalar_t__ ps_track_fill (TYPE_1__*,TYPE_2__*,int ,int const*,size_t,int) ;
 TYPE_3__* realloc (TYPE_3__*,int) ;

__attribute__((used)) static inline int ps_psm_fill( ps_psm_t *p_psm,
                               const uint8_t *p_buffer, size_t i_pkt,
                               ps_track_t tk[PS_TK_COUNT], es_out_t *out )
{
    size_t i_length, i_info_length, i_es_base;
    uint8_t i_version;
    bool b_single_extension;



    assert(i_pkt >= 4);
    if( !p_psm || i_pkt < 10 || p_buffer[3] != PS_STREAM_ID_MAP)
        return VLC_EGENERIC;

    i_length = GetWBE(&p_buffer[4]) + 6;
    if( i_length > i_pkt ) return VLC_EGENERIC;

    if((p_buffer[6] & 0x80) == 0)
        return VLC_EGENERIC;

    b_single_extension = p_buffer[6] & 0x40;
    i_version = (p_buffer[6] & 0xf8);

    if( p_psm->i_version == i_version ) return VLC_EGENERIC;

    ps_psm_destroy( p_psm );

    i_info_length = GetWBE(&p_buffer[8]);
    if( i_info_length + 10 > i_length )
        return VLC_EGENERIC;




    i_es_base = 12 + i_info_length;

    while( i_es_base + 4 < i_length )
    {
        ps_es_t *tmp_es = realloc( p_psm->es, sizeof(ps_es_t) * (p_psm->i_es+1) );
        if( tmp_es == ((void*)0) )
            break;
        p_psm->es = tmp_es;

        ps_es_t *p_es = &p_psm->es[ p_psm->i_es++ ];
        p_es->i_type = p_buffer[ i_es_base ];
        p_es->i_id = p_buffer[ i_es_base + 1 ];

        i_info_length = GetWBE(&p_buffer[ i_es_base + 2 ]);

        if( i_es_base + 4 + i_info_length > i_length )
            break;






        if( p_es->i_id == PS_STREAM_ID_EXTENDED && b_single_extension == 0 )
        {
            if( i_info_length < 3 )
                break;
            p_es->i_id = (p_es->i_id << 8) | (p_buffer[i_es_base + 6] & 0x7F);
            ps_parse_descriptors( &p_buffer[i_es_base + 4 + 3],
                                  i_info_length - 3,
                                  &p_psm->uniqueextdesc );
        }
        else
        {
            ps_parse_descriptors( &p_buffer[i_es_base + 4],
                                  i_info_length, &p_es->desc );
        }

        i_es_base += 4 + i_info_length;
    }



    p_psm->i_version = i_version;


    for( int i = 0; i < PS_TK_COUNT; i++ )
    {
        if( !tk[i].b_configured || !tk[i].es ) continue;

        ps_track_t tk_tmp;
        es_format_Init( &tk_tmp.fmt, UNKNOWN_ES, 0 );

        if( ps_track_fill( &tk_tmp, p_psm, tk[i].i_id,
                           p_buffer, i_pkt, 0 ) != VLC_SUCCESS )
            continue;

        if( tk_tmp.fmt.i_codec == tk[i].fmt.i_codec )
        {
            es_format_Clean( &tk_tmp.fmt );
            continue;
        }

        es_out_Del( out, tk[i].es );
        es_format_Clean( &tk[i].fmt );

        tk_tmp.b_configured = 1;
        tk[i] = tk_tmp;
        tk[i].es = es_out_Add( out, &tk[i].fmt );
    }

    return VLC_SUCCESS;
}
