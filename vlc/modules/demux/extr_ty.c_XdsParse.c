
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int b_xds; size_t i_class; int i_type; int b_future; TYPE_2__** pkt; } ;
typedef TYPE_1__ xds_t ;
struct TYPE_7__ {int b_started; scalar_t__ i_data; int i_sum; int* p_data; } ;
typedef TYPE_2__ xds_packet_t ;
typedef size_t xds_class_t ;
typedef int uint8_t ;


 scalar_t__ XDS_MAX_DATA_SIZE ;
 int XdsDecode (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void XdsParse( xds_t *h, uint8_t d1, uint8_t d2 )
{

    d1 &= 0x7f;
    d2 &= 0x7f;


    if( d1 >= 0x01 && d1 <= 0x0e )
    {
        const xds_class_t i_class = ( d1 - 1 ) >> 1;
        const int i_type = d2;
        const bool b_start = d1 & 0x01;
        xds_packet_t *pk = &h->pkt[i_class][i_type];

        if( !b_start && !pk->b_started )
        {

            h->b_xds = 0;
            return;
        }

        h->b_xds = 1;
        h->i_class = i_class;
        h->i_type = i_type;
        h->b_future = !b_start;
        pk->b_started = 1;
        if( b_start )
        {
            pk->i_data = 0;
            pk->i_sum = d1 + d2;
        }
    }
    else if( d1 == 0x0f && h->b_xds )
    {
        xds_packet_t *pk = &h->pkt[h->i_class][h->i_type];


        pk->i_sum += d1 + d2;
        if( pk->i_sum & 0x7f )
        {

            pk->b_started = 0;
            return;
        }
        if( pk->i_data <= 0 )
        {

            pk->b_started = 0;
            return;
        }



        XdsDecode( h, pk );


        pk->b_started = 0;
    }
    else if( d1 >= 0x20 && h->b_xds )
    {
        xds_packet_t *pk = &h->pkt[h->i_class][h->i_type];

        if( pk->i_data+2 > XDS_MAX_DATA_SIZE )
        {


            h->b_xds = 0;
            pk->b_started = 0;
            return;
        }

        pk->p_data[pk->i_data++] = d1 & 0x7f;
        pk->p_data[pk->i_data++] = d2 & 0x7f;
        pk->i_sum += d1+d2;
    }
    else
    {
        h->b_xds = 0;
    }
}
