
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {TYPE_1__* p_sample_vide; } ;
struct TYPE_8__ {scalar_t__ i_type; int i_pos; TYPE_2__ data; int i_handler; } ;
struct TYPE_6__ {int i_qt_image_description; scalar_t__* sz_compressorname; int i_depth; int i_height; int i_width; int i_qt_color_table; int i_qt_frame_count; int i_qt_data_size; int i_vertresolution; int i_horizresolution; int i_qt_spatial_quality; int i_qt_temporal_quality; int i_qt_vendor; int i_qt_revision_level; int i_qt_version; scalar_t__** p_qt_image_description; int i_data_reference_index; int * i_reserved1; } ;
typedef TYPE_3__ MP4_Box_t ;


 scalar_t__ ATOM_drmi ;
 int ATOM_vide ;
 int MP4_Box_data_sample_vide_t ;
 int MP4_FreeBox_sample_vide ;
 int MP4_GET1BYTE (int ) ;
 int MP4_GET2BYTES (int ) ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 int MP4_ReadBoxContainerRawInBox (int *,TYPE_3__*,int*,int,int) ;
 int header_size ;
 int i_read ;
 scalar_t__** malloc (int) ;
 int memcpy (scalar_t__**,int*,int) ;
 int msg_Dbg (int *,char*,int ,int ,int ,scalar_t__*) ;
 int msg_Warn (int *,char*) ;
 int* p_buff ;
 int* p_peek ;
 scalar_t__ unlikely (int ) ;

int MP4_ReadBox_sample_vide( stream_t *p_stream, MP4_Box_t *p_box )
{
    p_box->i_handler = ATOM_vide;
    MP4_READBOX_ENTER( MP4_Box_data_sample_vide_t, MP4_FreeBox_sample_vide );

    size_t i_actually_read = i_read + header_size;

    for( unsigned i = 0; i < 6 ; i++ )
    {
        MP4_GET1BYTE( p_box->data.p_sample_vide->i_reserved1[i] );
    }

    MP4_GET2BYTES( p_box->data.p_sample_vide->i_data_reference_index );




    if( i_read > 0 )
    {
        p_box->data.p_sample_vide->p_qt_image_description = malloc( i_read );
        if( unlikely( p_box->data.p_sample_vide->p_qt_image_description == ((void*)0) ) )
            MP4_READBOX_EXIT( 0 );
        p_box->data.p_sample_vide->i_qt_image_description = i_read;
        memcpy( p_box->data.p_sample_vide->p_qt_image_description,
                p_peek, i_read );
    }
    else
    {
        p_box->data.p_sample_vide->i_qt_image_description = 0;
        p_box->data.p_sample_vide->p_qt_image_description = ((void*)0);
    }

    MP4_GET2BYTES( p_box->data.p_sample_vide->i_qt_version );
    MP4_GET2BYTES( p_box->data.p_sample_vide->i_qt_revision_level );
    MP4_GET4BYTES( p_box->data.p_sample_vide->i_qt_vendor );

    MP4_GET4BYTES( p_box->data.p_sample_vide->i_qt_temporal_quality );
    MP4_GET4BYTES( p_box->data.p_sample_vide->i_qt_spatial_quality );

    MP4_GET2BYTES( p_box->data.p_sample_vide->i_width );
    MP4_GET2BYTES( p_box->data.p_sample_vide->i_height );

    MP4_GET4BYTES( p_box->data.p_sample_vide->i_horizresolution );
    MP4_GET4BYTES( p_box->data.p_sample_vide->i_vertresolution );

    MP4_GET4BYTES( p_box->data.p_sample_vide->i_qt_data_size );
    MP4_GET2BYTES( p_box->data.p_sample_vide->i_qt_frame_count );

    if ( i_read < 32 )
        MP4_READBOX_EXIT( 0 );
    if( p_peek[0] <= 31 )
    {
        memcpy( &p_box->data.p_sample_vide->sz_compressorname, &p_peek[1], p_peek[0] );
        p_box->data.p_sample_vide->sz_compressorname[p_peek[0]] = 0;
    }
    p_peek += 32; i_read -= 32;

    MP4_GET2BYTES( p_box->data.p_sample_vide->i_depth );
    MP4_GET2BYTES( p_box->data.p_sample_vide->i_qt_color_table );

    if( p_box->i_type == ATOM_drmi )
    {
        msg_Warn( p_stream, "DRM protected streams are not supported." );
        MP4_READBOX_EXIT( 0 );
    }

    if( i_actually_read > 78 && p_peek - p_buff > 78 )
    {
        MP4_ReadBoxContainerRawInBox( p_stream, p_box, p_peek, i_read,
                                      p_box->i_pos + p_peek - p_buff );
    }
    MP4_READBOX_EXIT( 1 );
}
