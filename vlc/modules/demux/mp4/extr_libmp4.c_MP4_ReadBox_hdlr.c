
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int stream_t ;
typedef int int32_t ;
struct TYPE_7__ {scalar_t__ i_predefined; scalar_t__ i_handler_type; size_t* psz_name; } ;
struct TYPE_5__ {TYPE_4__* p_hdlr; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_Box_data_hdlr_t ;
 int MP4_FreeBox_hdlr ;
 int MP4_GET1BYTE (size_t) ;
 int MP4_GET4BYTES (int ) ;
 int MP4_GETFOURCC (scalar_t__) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 size_t SSIZE_MAX ;
 scalar_t__ VLC_FOURCC (char,char,char,char) ;
 int VLC_UNUSED (int ) ;
 size_t i_read ;
 size_t* malloc (size_t) ;
 int memcpy (size_t*,int ,size_t) ;
 int msg_Dbg (int *,char*,char*,char*) ;
 int p_peek ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int MP4_ReadBox_hdlr( stream_t *p_stream, MP4_Box_t *p_box )
{
    int32_t i_reserved;
    VLC_UNUSED(i_reserved);

    MP4_READBOX_ENTER( MP4_Box_data_hdlr_t, MP4_FreeBox_hdlr );

    MP4_GETVERSIONFLAGS( p_box->data.p_hdlr );

    MP4_GETFOURCC( p_box->data.p_hdlr->i_predefined );
    MP4_GETFOURCC( p_box->data.p_hdlr->i_handler_type );

    MP4_GET4BYTES( i_reserved );
    MP4_GET4BYTES( i_reserved );
    MP4_GET4BYTES( i_reserved );
    p_box->data.p_hdlr->psz_name = ((void*)0);

    if( i_read >= SSIZE_MAX )
        MP4_READBOX_EXIT( 0 );

    if( i_read > 0 )
    {
        size_t i_copy;


        if( p_box->data.p_hdlr->i_predefined == VLC_FOURCC( 'm', 'h', 'l', 'r' ) )
        {
            uint8_t i_len;

            MP4_GET1BYTE( i_len );
            i_copy = (i_len <= i_read) ? i_len : i_read;
        }
        else
            i_copy = i_read;

        uint8_t *psz = p_box->data.p_hdlr->psz_name = malloc( i_copy + 1 );
        if( unlikely( psz == ((void*)0) ) )
            MP4_READBOX_EXIT( 0 );

        memcpy( psz, p_peek, i_copy );
        p_box->data.p_hdlr->psz_name[i_copy] = '\0';
    }







    MP4_READBOX_EXIT( 1 );
}
