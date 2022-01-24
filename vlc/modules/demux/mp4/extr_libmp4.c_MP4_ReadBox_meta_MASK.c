#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_10__ {scalar_t__ i_version; int /*<<< orphan*/  i_handler_type; } ;
struct TYPE_9__ {int i_size; int /*<<< orphan*/  i_handler; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  const ATOM_hdlr ; 
 TYPE_7__* FUNC0 (TYPE_1__ const*) ; 
#define  HANDLER_mdir 130 
#define  HANDLER_mdta 129 
#define  HANDLER_pict 128 
 TYPE_1__* FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,char*,int) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 

__attribute__((used)) static int FUNC7( stream_t *p_stream, MP4_Box_t *p_box )
{
    const uint8_t *p_peek;
    const size_t i_headersize = FUNC4( p_box );

    if( p_box->i_size < 16 || p_box->i_size - i_headersize < 8 )
        return 0;

    /* skip over box header */
    if( FUNC6( p_stream, NULL, i_headersize ) < (ssize_t) i_headersize )
        return 0;

    /* meta content starts with a 4 byte version/flags value (should be 0) */
    if( FUNC5( p_stream, &p_peek, 8 ) < 8 )
        return 0;

    if( !FUNC3( p_peek, "\0\0\0", 4 ) ) /* correct header case */
    {
        if( FUNC6( p_stream, NULL, 4 ) < 4 )
            return 0;
    }
    else if( FUNC3( &p_peek[4], "hdlr", 4 ) ) /* Broken, headerless ones */
    {
       return 0;
    }

    /* load child atoms up to the handler (which should be next anyway) */
    const uint32_t stoplist[] = { ATOM_hdlr, 0 };
    if ( !FUNC2( p_stream, p_box, stoplist ) )
        return 0;

    /* Mandatory */
    const MP4_Box_t *p_hdlr = FUNC1( p_box, "hdlr" );
    if ( p_hdlr && FUNC0(p_hdlr) && FUNC0(p_hdlr)->i_version == 0 )
    {
        p_box->i_handler = FUNC0(p_hdlr)->i_handler_type;
        switch( p_box->i_handler )
        {
            case HANDLER_pict:
            case HANDLER_mdta:
            case HANDLER_mdir:
                /* then it behaves like a container */
                return FUNC2( p_stream, p_box, NULL );
            default:
                /* skip parsing, will be seen as empty container */
                break;
        }
    }

    return 1;
}