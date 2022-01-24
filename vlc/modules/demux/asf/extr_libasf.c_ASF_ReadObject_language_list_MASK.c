#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int ssize_t ;
struct TYPE_5__ {scalar_t__ i_object_size; size_t i_language; size_t* ppsz_language; } ;
struct TYPE_4__ {TYPE_2__ language_list; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_language_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t ASF_OBJECT_COMMON_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INT32_MAX ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 size_t* FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,scalar_t__) ; 

__attribute__((used)) static int FUNC7(stream_t *s, asf_object_t *p_obj)
{
    asf_object_language_list_t *p_ll = &p_obj->language_list;
    const uint8_t *p_peek, *p_data;
    uint16_t i;

    if( p_ll->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = FUNC6( s, &p_peek, p_ll->i_object_size );
    if( i_peek < 26 )
       return VLC_EGENERIC;

    p_data = &p_peek[ASF_OBJECT_COMMON_SIZE];

    p_ll->i_language = FUNC2();
    if( p_ll->i_language > 0 )
    {
        p_ll->ppsz_language = FUNC4( p_ll->i_language, sizeof( char *) );
        if( !p_ll->ppsz_language )
            return VLC_ENOMEM;

        for( i = 0; i < p_ll->i_language; i++ )
        {
            if( !FUNC0(1) )
                break;
            p_ll->ppsz_language[i] = FUNC3( FUNC1() );
        }
        p_ll->i_language = i;
    }

#ifdef ASF_DEBUG
    msg_Dbg( s, "read \"language list object\" %u entries",
             p_ll->i_language );
    for( i = 0; i < p_ll->i_language; i++ )
        msg_Dbg( s, "  - '%s'",
                 p_ll->ppsz_language[i] );
#endif
    return VLC_SUCCESS;
}