
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_8__ {TYPE_2__* p_colr; } ;
struct TYPE_9__ {TYPE_3__ data; } ;
struct TYPE_6__ {int i_full_range; int i_matrix_idx; int i_transfer_function_idx; int i_primary_idx; } ;
struct TYPE_7__ {scalar_t__ i_type; TYPE_1__ nclc; } ;
typedef TYPE_4__ MP4_Box_t ;


 int MP4_Box_data_colr_t ;
 int MP4_GET1BYTE (int ) ;
 int MP4_GET2BYTES (int ) ;
 int MP4_GETFOURCC (scalar_t__) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 scalar_t__ VLC_FOURCC (char,char,char,char) ;
 int msg_Warn (int *,char*,char*) ;

__attribute__((used)) static int MP4_ReadBox_colr( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_READBOX_ENTER( MP4_Box_data_colr_t, ((void*)0) );
    MP4_GETFOURCC( p_box->data.p_colr->i_type );
    if ( p_box->data.p_colr->i_type == VLC_FOURCC( 'n', 'c', 'l', 'c' ) ||
         p_box->data.p_colr->i_type == VLC_FOURCC( 'n', 'c', 'l', 'x' ) )
    {
        MP4_GET2BYTES( p_box->data.p_colr->nclc.i_primary_idx );
        MP4_GET2BYTES( p_box->data.p_colr->nclc.i_transfer_function_idx );
        MP4_GET2BYTES( p_box->data.p_colr->nclc.i_matrix_idx );
        if ( p_box->data.p_colr->i_type == VLC_FOURCC( 'n', 'c', 'l', 'x' ) )
            MP4_GET1BYTE( p_box->data.p_colr->nclc.i_full_range );
    }
    else
    {



    }
    MP4_READBOX_EXIT( 1 );
}
