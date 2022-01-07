
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int b_xds; int i_class; int b_future; int b_meta_changed; int meta; TYPE_1__** pkt; scalar_t__ i_type; } ;
typedef TYPE_2__ xds_t ;
struct TYPE_4__ {int b_started; } ;


 int XDS_MAX_CLASS_COUNT ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void XdsInit( xds_t *h )
{
    h->b_xds = 0;
    h->i_class = XDS_MAX_CLASS_COUNT;
    h->i_type = 0;
    h->b_future = 0;
    for( int i = 0; i < XDS_MAX_CLASS_COUNT; i++ )
    {
        for( int j = 0; j < 128; j++ )
            h->pkt[i][j].b_started = 0;
    }
    h->b_meta_changed = 0;
    memset( &h->meta, 0, sizeof(h->meta) );
}
