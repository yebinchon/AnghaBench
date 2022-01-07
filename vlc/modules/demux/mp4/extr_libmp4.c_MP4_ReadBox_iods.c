
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {int i_object_descriptor; char i_OD_profile_level; char i_scene_profile_level; char i_audio_profile_level; char i_visual_profile_level; char i_graphics_profile_level; } ;
struct TYPE_5__ {TYPE_4__* p_iods; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_Box_data_iods_t ;
 int MP4_GET1BYTE (char) ;
 int MP4_GET2BYTES (int) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int VLC_UNUSED (char) ;
 int msg_Dbg (int *,char*,int,char,char,char,char,char) ;

__attribute__((used)) static int MP4_ReadBox_iods( stream_t *p_stream, MP4_Box_t *p_box )
{
    char i_unused;
    VLC_UNUSED(i_unused);

    MP4_READBOX_ENTER( MP4_Box_data_iods_t, ((void*)0) );
    MP4_GETVERSIONFLAGS( p_box->data.p_iods );

    MP4_GET1BYTE( i_unused );
    MP4_GET1BYTE( i_unused );

    MP4_GET2BYTES( p_box->data.p_iods->i_object_descriptor );

    MP4_GET1BYTE( p_box->data.p_iods->i_OD_profile_level );
    MP4_GET1BYTE( p_box->data.p_iods->i_scene_profile_level );
    MP4_GET1BYTE( p_box->data.p_iods->i_audio_profile_level );
    MP4_GET1BYTE( p_box->data.p_iods->i_visual_profile_level );
    MP4_GET1BYTE( p_box->data.p_iods->i_graphics_profile_level );
    MP4_READBOX_EXIT( 1 );
}
