
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int oggpack_buffer ;
struct TYPE_11__ {int bytes; int packet; } ;
typedef TYPE_4__ ogg_packet ;
struct TYPE_10__ {char* psz_description; void** psz_language; } ;
struct TYPE_8__ {void* i_num_headers; } ;
struct TYPE_9__ {TYPE_1__ kate; } ;
struct TYPE_12__ {int b_force_backup; TYPE_3__ fmt; int dts; void* i_granule_shift; TYPE_2__ special; } ;
typedef TYPE_5__ logical_stream_t ;


 int FindKateCategoryName (char*) ;
 void* __MAX (void*,int) ;
 int date_Init (int *,void*,void*) ;
 int free (char*) ;
 void* malloc (int) ;
 int oggpack_adv (int *,int) ;
 void* oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ,int ) ;
 char* strdup (int ) ;

__attribute__((used)) static bool Ogg_ReadKateHeader( logical_stream_t *p_stream,
                                ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;
    uint32_t gnum;
    uint32_t gden;
    int n;
    char *psz_desc;




    p_stream->b_force_backup = 1;


    oggpack_readinit( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    oggpack_adv( &opb, 11*8 );
    p_stream->special.kate.i_num_headers = oggpack_read( &opb, 8 );
    oggpack_adv( &opb, 3*8 );
    p_stream->i_granule_shift = oggpack_read( &opb, 8 );
    oggpack_adv( &opb, 8*8 );
    gnum = oggpack_read( &opb, 32 );
    gden = oggpack_read( &opb, 32 );
    gden = __MAX( gden, 1 );
    if ( !gnum || !gden )
        return 0;
    date_Init( &p_stream->dts, gnum, gden );

    p_stream->fmt.psz_language = malloc(16);
    if( p_stream->fmt.psz_language )
    {
        for( n = 0; n < 16; n++ )
            p_stream->fmt.psz_language[n] = oggpack_read(&opb,8);
        p_stream->fmt.psz_language[15] = 0;
    }
    else
    {
        for( n = 0; n < 16; n++ )
            oggpack_read(&opb,8);
    }
    p_stream->fmt.psz_description = malloc(16);
    if( p_stream->fmt.psz_description )
    {
        for( n = 0; n < 16; n++ )
            p_stream->fmt.psz_description[n] = oggpack_read(&opb,8);
        p_stream->fmt.psz_description[15] = 0;


        psz_desc = strdup(FindKateCategoryName(p_stream->fmt.psz_description));
        if( psz_desc )
        {
            free( p_stream->fmt.psz_description );
            p_stream->fmt.psz_description = psz_desc;
        }
    }
    else
    {
        for( n = 0; n < 16; n++ )
            oggpack_read(&opb,8);
    }

    return 1;
}
