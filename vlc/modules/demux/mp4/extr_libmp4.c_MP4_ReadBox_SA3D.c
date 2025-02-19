
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int stream_t ;
struct TYPE_5__ {TYPE_2__* p_SA3D; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct TYPE_6__ {scalar_t__ i_ambisonic_type; scalar_t__ i_ambisonic_channel_ordering; scalar_t__ i_ambisonic_normalization; int i_num_channels; int i_ambisonic_order; } ;
typedef TYPE_3__ MP4_Box_t ;


 int MP4_Box_data_SA3D_t ;
 int MP4_GET1BYTE (scalar_t__) ;
 int MP4_GET4BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;

__attribute__((used)) static int MP4_ReadBox_SA3D( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_SA3D_t, ((void*)0) );

    uint8_t i_version;
    MP4_GET1BYTE( i_version );
    if ( i_version != 0 )
        MP4_READBOX_EXIT( 0 );

    MP4_GET1BYTE( p_box->data.p_SA3D->i_ambisonic_type );
    MP4_GET4BYTES( p_box->data.p_SA3D->i_ambisonic_order );
    MP4_GET1BYTE( p_box->data.p_SA3D->i_ambisonic_channel_ordering );
    MP4_GET1BYTE( p_box->data.p_SA3D->i_ambisonic_normalization );
    MP4_GET4BYTES( p_box->data.p_SA3D->i_num_channels );
    MP4_READBOX_EXIT( 1 );
}
