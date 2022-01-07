
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int stream_t ;
struct TYPE_6__ {TYPE_1__* p_ftyp; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_5__ {int i_compatible_brands_count; int * i_compatible_brands; int i_minor_version; int i_major_brand; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_ftyp_t ;
 int MP4_FreeBox_ftyp ;
 int MP4_GET4BYTES (int ) ;
 int MP4_GETFOURCC (int ) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 int i_read ;
 scalar_t__ unlikely (int ) ;
 int * vlc_alloc (int,int) ;

__attribute__((used)) static int MP4_ReadBox_ftyp( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_ftyp_t, MP4_FreeBox_ftyp );

    MP4_GETFOURCC( p_box->data.p_ftyp->i_major_brand );
    MP4_GET4BYTES( p_box->data.p_ftyp->i_minor_version );

    p_box->data.p_ftyp->i_compatible_brands_count = i_read / 4;
    if( p_box->data.p_ftyp->i_compatible_brands_count > 0 )
    {
        uint32_t *tab = p_box->data.p_ftyp->i_compatible_brands =
            vlc_alloc( p_box->data.p_ftyp->i_compatible_brands_count,
                       sizeof(uint32_t) );

        if( unlikely( tab == ((void*)0) ) )
            MP4_READBOX_EXIT( 0 );

        for( unsigned i = 0; i < p_box->data.p_ftyp->i_compatible_brands_count; i++ )
        {
            MP4_GETFOURCC( tab[i] );
        }
    }
    else
    {
        p_box->data.p_ftyp->i_compatible_brands = ((void*)0);
    }

    MP4_READBOX_EXIT( 1 );
}
