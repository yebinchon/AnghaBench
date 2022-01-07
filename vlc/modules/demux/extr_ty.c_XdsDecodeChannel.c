
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int psz_channel_number; int psz_channel_call_letter; int psz_channel_name; } ;
struct TYPE_8__ {int i_type; TYPE_1__ meta; } ;
typedef TYPE_2__ xds_t ;
struct TYPE_9__ {int i_data; int * p_data; } ;
typedef TYPE_3__ xds_packet_t ;


 int XdsChangeString (TYPE_2__*,int *,char*) ;
 int XdsStringUtf8 (char*,int *,int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void XdsDecodeChannel( xds_t *h, xds_packet_t *pk )
{
    char name[2*32+1];
    char chan[2*32+1];

    switch( h->i_type )
    {
    case 0x01:
        if( pk->i_data < 2 )
            return;
        XdsStringUtf8( name, pk->p_data, pk->i_data );
        if( XdsChangeString( h, &h->meta.psz_channel_name, name ) )
        {


        }
        break;

    case 0x02:
        if( pk->i_data < 4 )
            return;

        XdsStringUtf8( name, pk->p_data, 4 );
        if( XdsChangeString( h, &h->meta.psz_channel_call_letter, name ) )
        {


        }
        if( pk->i_data >= 6 )
        {
            XdsStringUtf8( chan, &pk->p_data[4], 2 );
            if( XdsChangeString( h, &h->meta.psz_channel_number, chan ) )
            {


            }
        }
        else
        {
            if( XdsChangeString( h, &h->meta.psz_channel_number, ((void*)0) ) )
            {


            }
        }
        break;
    case 0x03:

        break;
    case 0x04:

        break;
    default:



        break;
    }
}
