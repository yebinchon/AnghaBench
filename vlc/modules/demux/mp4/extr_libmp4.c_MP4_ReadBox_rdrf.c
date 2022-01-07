
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef int stream_t ;
struct TYPE_7__ {char* psz_ref; int i_ref_type; } ;
struct TYPE_5__ {TYPE_4__* p_rdrf; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
typedef TYPE_2__ MP4_Box_t ;


 int MP4_Box_data_rdrf_t ;
 int MP4_FreeBox_rdrf ;
 int MP4_GET1BYTE (char) ;
 int MP4_GET4BYTES (unsigned int) ;
 int MP4_GETFOURCC (int ) ;
 int MP4_GETVERSIONFLAGS (TYPE_4__*) ;
 int MP4_READBOX_ENTER (int ,int ) ;
 int MP4_READBOX_EXIT (int) ;
 char* malloc (unsigned int) ;
 int msg_Dbg (int *,char*,char*,char*) ;

__attribute__((used)) static int MP4_ReadBox_rdrf( stream_t *p_stream, MP4_Box_t *p_box )
{
    uint32_t i_len;
    MP4_READBOX_ENTER( MP4_Box_data_rdrf_t, MP4_FreeBox_rdrf );

    MP4_GETVERSIONFLAGS( p_box->data.p_rdrf );
    MP4_GETFOURCC( p_box->data.p_rdrf->i_ref_type );
    MP4_GET4BYTES( i_len );
    i_len++;

    if( i_len > 0 )
    {
        p_box->data.p_rdrf->psz_ref = malloc( i_len );
        if( p_box->data.p_rdrf->psz_ref == ((void*)0) )
            MP4_READBOX_EXIT( 0 );
        i_len--;

        for( unsigned i = 0; i < i_len; i++ )
        {
            MP4_GET1BYTE( p_box->data.p_rdrf->psz_ref[i] );
        }
        p_box->data.p_rdrf->psz_ref[i_len] = '\0';
    }
    else
    {
        p_box->data.p_rdrf->psz_ref = ((void*)0);
    }







    MP4_READBOX_EXIT( 1 );
}
