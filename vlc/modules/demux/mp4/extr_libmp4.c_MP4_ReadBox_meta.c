
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_10__ {scalar_t__ i_version; int i_handler_type; } ;
struct TYPE_9__ {int i_size; int i_handler; } ;
typedef TYPE_1__ MP4_Box_t ;


 int const ATOM_hdlr ;
 TYPE_7__* BOXDATA (TYPE_1__ const*) ;



 TYPE_1__* MP4_BoxGet (TYPE_1__*,char*) ;
 int MP4_ReadBoxContainerChildren (int *,TYPE_1__*,int const*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 size_t mp4_box_headersize (TYPE_1__*) ;
 int vlc_stream_Peek (int *,int const**,int) ;
 int vlc_stream_Read (int *,int *,size_t const) ;

__attribute__((used)) static int MP4_ReadBox_meta( stream_t *p_stream, MP4_Box_t *p_box )
{
    const uint8_t *p_peek;
    const size_t i_headersize = mp4_box_headersize( p_box );

    if( p_box->i_size < 16 || p_box->i_size - i_headersize < 8 )
        return 0;


    if( vlc_stream_Read( p_stream, ((void*)0), i_headersize ) < (ssize_t) i_headersize )
        return 0;


    if( vlc_stream_Peek( p_stream, &p_peek, 8 ) < 8 )
        return 0;

    if( !memcmp( p_peek, "\0\0\0", 4 ) )
    {
        if( vlc_stream_Read( p_stream, ((void*)0), 4 ) < 4 )
            return 0;
    }
    else if( memcmp( &p_peek[4], "hdlr", 4 ) )
    {
       return 0;
    }


    const uint32_t stoplist[] = { ATOM_hdlr, 0 };
    if ( !MP4_ReadBoxContainerChildren( p_stream, p_box, stoplist ) )
        return 0;


    const MP4_Box_t *p_hdlr = MP4_BoxGet( p_box, "hdlr" );
    if ( p_hdlr && BOXDATA(p_hdlr) && BOXDATA(p_hdlr)->i_version == 0 )
    {
        p_box->i_handler = BOXDATA(p_hdlr)->i_handler_type;
        switch( p_box->i_handler )
        {
            case 128:
            case 129:
            case 130:

                return MP4_ReadBoxContainerChildren( p_stream, p_box, ((void*)0) );
            default:

                break;
        }
    }

    return 1;
}
