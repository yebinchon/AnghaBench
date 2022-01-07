
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int psz_rating; int psz_name; } ;
struct TYPE_8__ {int psz_rating; int psz_name; } ;
struct TYPE_7__ {TYPE_1__ future; TYPE_3__ current; int psz_channel_number; int psz_channel_call_letter; int psz_channel_name; } ;
struct TYPE_9__ {TYPE_2__ meta; } ;
typedef TYPE_4__ xds_t ;


 int free (int ) ;

__attribute__((used)) static void XdsExit( xds_t *h )
{

    free( h->meta.psz_channel_name );
    free( h->meta.psz_channel_call_letter );
    free( h->meta.psz_channel_number );


    free( h->meta.current.psz_name );
    free( h->meta.current.psz_rating );

    free( h->meta.future.psz_name );
    free( h->meta.future.psz_rating );
}
