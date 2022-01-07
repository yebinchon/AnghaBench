
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {TYPE_1__* p_sample_hint; } ;
struct TYPE_8__ {scalar_t__ i_size; scalar_t__ i_pos; TYPE_2__ data; } ;
struct TYPE_6__ {int * p_data; int i_data_reference_index; int * i_reserved1; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_sample_hint_t ;
 int MP4_FreeBox_sample_hint ;
 int MP4_GET1BYTE (int ) ;
 int MP4_GET2BYTES (int ) ;
 int MP4_GET8BYTES (int ) ;
 int MP4_READBOX_ENTER_PARTIAL (int ,int,int ) ;
 int MP4_READBOX_EXIT (int) ;
 int MP4_ReadBoxContainerChildren (int *,TYPE_3__*,int *) ;
 scalar_t__ MP4_Seek (int *,scalar_t__) ;
 int * malloc (int) ;

__attribute__((used)) static int MP4_ReadBox_sample_hint8( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER_PARTIAL( MP4_Box_data_sample_hint_t, 24, MP4_FreeBox_sample_hint );

    for( unsigned i = 0; i < 6 ; i++ )
    {
        MP4_GET1BYTE( p_box->data.p_sample_hint->i_reserved1[i] );
    }

    MP4_GET2BYTES( p_box->data.p_sample_hint->i_data_reference_index );

    if( !(p_box->data.p_sample_hint->p_data = malloc(8)) )
        MP4_READBOX_EXIT( 0 );

    MP4_GET8BYTES( *(p_box->data.p_sample_hint->p_data) );

    MP4_ReadBoxContainerChildren(p_stream, p_box, ((void*)0));

    if ( MP4_Seek( p_stream, p_box->i_pos + p_box->i_size ) )
        MP4_READBOX_EXIT( 0 );

    MP4_READBOX_EXIT( 1 );
}
