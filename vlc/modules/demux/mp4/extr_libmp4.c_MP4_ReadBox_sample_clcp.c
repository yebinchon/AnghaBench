
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_5__ {TYPE_2__* p_sample_clcp; } ;
struct TYPE_7__ {TYPE_1__ data; int i_handler; } ;
struct TYPE_6__ {int i_data_reference_index; int * i_reserved1; } ;
typedef TYPE_3__ MP4_Box_t ;


 int ATOM_clcp ;
 int MP4_Box_data_sample_clcp_t ;
 int MP4_GET1BYTE (int ) ;
 int MP4_GET2BYTES (int ) ;
 int MP4_READBOX_ENTER (int ,int *) ;
 int MP4_READBOX_EXIT (int) ;
 int i_read ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static int MP4_ReadBox_sample_clcp( stream_t *p_stream, MP4_Box_t *p_box )
{
    p_box->i_handler = ATOM_clcp;
    MP4_READBOX_ENTER( MP4_Box_data_sample_clcp_t, ((void*)0) );

    if( i_read < 8 )
        MP4_READBOX_EXIT( 0 );

    for( int i=0; i<6; i++ )
        MP4_GET1BYTE( p_box->data.p_sample_clcp->i_reserved1[i] );
    MP4_GET2BYTES( p_box->data.p_sample_clcp->i_data_reference_index );




    MP4_READBOX_EXIT( 1 );
}
