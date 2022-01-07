
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_20__ {scalar_t__ avail_out; scalar_t__ total_out; scalar_t__ opaque; scalar_t__ zfree; scalar_t__ zalloc; int * next_out; int avail_in; int * next_in; } ;
typedef TYPE_5__ z_stream ;
typedef scalar_t__ voidpf ;
typedef int uint8_t ;
typedef int stream_t ;
typedef scalar_t__ free_func ;
typedef scalar_t__ alloc_func ;
struct TYPE_19__ {TYPE_10__* p_cmov; TYPE_3__* p_cmvd; TYPE_2__* p_dcom; } ;
struct TYPE_21__ {TYPE_4__ data; TYPE_1__* p_father; } ;
struct TYPE_18__ {scalar_t__ i_uncompressed_size; int * p_data; scalar_t__ b_compressed; int i_compressed_size; } ;
struct TYPE_17__ {scalar_t__ i_algorithm; } ;
struct TYPE_16__ {scalar_t__ i_type; } ;
struct TYPE_15__ {int p_moov; } ;
typedef TYPE_6__ MP4_Box_t ;
typedef int MP4_Box_data_cmov_t ;


 scalar_t__ ATOM_foov ;
 scalar_t__ ATOM_moov ;
 scalar_t__ ATOM_zlib ;
 TYPE_6__* MP4_BoxGet (TYPE_6__*,char*) ;
 int MP4_ReadBox (int *,int *) ;
 int MP4_ReadBoxContainer (int *,TYPE_6__*) ;
 int VLC_OBJECT (int *) ;
 int Z_NO_FLUSH ;
 scalar_t__ Z_NULL ;
 int Z_OK ;
 int Z_STREAM_END ;
 TYPE_10__* calloc (int,int) ;
 int free (int *) ;
 int inflate (TYPE_5__*,int ) ;
 int inflateEnd (TYPE_5__*) ;
 int inflateInit (TYPE_5__*) ;
 int * malloc (scalar_t__) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_MemoryNew (int ,int *,scalar_t__,int) ;

__attribute__((used)) static int MP4_ReadBox_cmov( stream_t *p_stream, MP4_Box_t *p_box )
{
    MP4_Box_t *p_dcom;
    MP4_Box_t *p_cmvd;
    if( !( p_box->data.p_cmov = calloc(1, sizeof( MP4_Box_data_cmov_t ) ) ) )
        return 0;

    if( !p_box->p_father ||
        ( p_box->p_father->i_type != ATOM_moov &&
          p_box->p_father->i_type != ATOM_foov ) )
    {
        msg_Warn( p_stream, "Read box: \"cmov\" box alone" );
        return 1;
    }

    if( !MP4_ReadBoxContainer( p_stream, p_box ) )
    {
        return 0;
    }

    if( ( p_dcom = MP4_BoxGet( p_box, "dcom" ) ) == ((void*)0) ||
        ( p_cmvd = MP4_BoxGet( p_box, "cmvd" ) ) == ((void*)0) ||
        p_cmvd->data.p_cmvd->p_data == ((void*)0) )
    {
        msg_Warn( p_stream, "read box: \"cmov\" incomplete" );
        return 0;
    }

    if( p_dcom->data.p_dcom->i_algorithm != ATOM_zlib )
    {
        msg_Dbg( p_stream, "read box: \"cmov\" compression algorithm : %4.4s "
                 "not supported", (char*)&p_dcom->data.p_dcom->i_algorithm );
        return 0;
    }


    msg_Dbg( p_stream, "read box: \"cmov\" zlib unsupported" );
    return 0;
}
