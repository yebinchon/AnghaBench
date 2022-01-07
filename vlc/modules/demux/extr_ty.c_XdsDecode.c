
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_class; } ;
typedef TYPE_1__ xds_t ;
typedef int xds_packet_t ;







 int XdsDecodeChannel (TYPE_1__*,int *) ;
 int XdsDecodeCurrentFuture (TYPE_1__*,int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void XdsDecode( xds_t *h, xds_packet_t *pk )
{
    switch( h->i_class )
    {
    case 131:
    case 130:
        XdsDecodeCurrentFuture( h, pk );
        break;
    case 132:
        XdsDecodeChannel( h, pk );
        break;
    case 129:



        break;
    case 128:



        break;
    default:

        break;
    }
}
