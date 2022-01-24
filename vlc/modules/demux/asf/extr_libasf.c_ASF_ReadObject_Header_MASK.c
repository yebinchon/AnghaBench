#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_reserved2; int /*<<< orphan*/  i_reserved1; int /*<<< orphan*/  i_sub_object_count; int /*<<< orphan*/ * p_last; int /*<<< orphan*/ * p_first; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_header_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int ASF_OBJECT_COMMON_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int  FUNC8( stream_t *s, asf_object_t *p_obj )
{
    asf_object_header_t *p_hdr = &p_obj->header;
    asf_object_t        *p_subobj;
    const uint8_t       *p_peek;

    if( FUNC6( s, &p_peek, 30 ) < 30 )
       return VLC_EGENERIC;

    p_hdr->i_sub_object_count = FUNC2( p_peek + ASF_OBJECT_COMMON_SIZE );
    p_hdr->i_reserved1 = p_peek[28];
    p_hdr->i_reserved2 = p_peek[29];
    p_hdr->p_first = NULL;
    p_hdr->p_last  = NULL;

#ifdef ASF_DEBUG
    msg_Dbg( s,
             "read \"header object\" subobj:%u, reserved1:%u, reserved2:%u",
             p_hdr->i_sub_object_count,
             p_hdr->i_reserved1,
             p_hdr->i_reserved2 );
#endif

    if( FUNC7( s, NULL, 30 ) != 30 )
        return VLC_EGENERIC;

    /* Now load sub object */
    for( ; ; )
    {
        p_subobj = FUNC4( sizeof( asf_object_t ) );

        if( !p_subobj || FUNC1( s, p_subobj, (asf_object_t*)p_hdr ) )
        {
            FUNC3( p_subobj );
            break;
        }
        if( FUNC0( s, p_subobj, 0 ) ) /* Go to the next object */
            break;
    }
    return VLC_SUCCESS;
}