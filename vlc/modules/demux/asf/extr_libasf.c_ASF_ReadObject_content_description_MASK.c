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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int ssize_t ;
struct TYPE_5__ {scalar_t__ i_object_size; void* psz_rating; void* psz_description; void* psz_copyright; void* psz_artist; void* psz_title; } ;
struct TYPE_4__ {TYPE_2__ content_description; } ;
typedef  TYPE_1__ asf_object_t ;
typedef  TYPE_2__ asf_object_content_description_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int ASF_OBJECT_COMMON_SIZE ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INT32_MAX ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 void* FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,void*,void*,void*,void*,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,scalar_t__) ; 

__attribute__((used)) static int FUNC5(stream_t *s, asf_object_t *p_obj)
{
    asf_object_content_description_t *p_cd = &p_obj->content_description;
    const uint8_t *p_peek, *p_data;
    uint16_t i_title, i_artist, i_copyright, i_description, i_rating;

    if( p_cd->i_object_size > INT32_MAX )
        return VLC_EGENERIC;

    ssize_t i_peek = FUNC4( s, &p_peek, p_cd->i_object_size );
    if( i_peek < 34 )
       return VLC_EGENERIC;

    p_data = p_peek + ASF_OBJECT_COMMON_SIZE;

    i_title         = FUNC1();
    i_artist        = FUNC1();
    i_copyright     = FUNC1();
    i_description   = FUNC1();
    i_rating        = FUNC1();

    if( !FUNC0( i_title+i_artist+i_copyright+i_description+i_rating ) )
        return VLC_EGENERIC;

    p_cd->psz_title = FUNC2( p_data, i_title );
    p_cd->psz_artist = FUNC2( p_data, i_artist );
    p_cd->psz_copyright = FUNC2( p_data, i_copyright );
    p_cd->psz_description = FUNC2( p_data, i_description );
    p_cd->psz_rating = FUNC2( p_data, i_rating );

#ifdef ASF_DEBUG
    msg_Dbg( s,
             "read \"content description object\" title:\"%s\" artist:\"%s\" copyright:\"%s\" description:\"%s\" rating:\"%s\"",
             p_cd->psz_title,
             p_cd->psz_artist,
             p_cd->psz_copyright,
             p_cd->psz_description,
             p_cd->psz_rating );
#endif

    return VLC_SUCCESS;
}