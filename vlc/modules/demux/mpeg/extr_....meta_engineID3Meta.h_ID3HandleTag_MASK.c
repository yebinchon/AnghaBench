#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ i_tag; int /*<<< orphan*/  psz; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const,char**) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,size_t,char**) ; 
 int FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 TYPE_1__* ID3_tag_to_metatype ; 
 scalar_t__ FUNC5 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11( const uint8_t *p_buf, size_t i_buf,
                          uint32_t i_tag,
                          vlc_meta_t *p_meta, bool *pb_updated )
{
    if( i_tag == FUNC5('W', 'X', 'X', 'X') )
    {
        return FUNC1( p_buf, i_buf, p_meta, pb_updated );
    }
    else if( i_tag == FUNC5('T', 'X', 'X', 'X') )
    {
        char *psz_key_alloc;
        const char *psz_key = FUNC3( p_buf, i_buf, &psz_key_alloc );
        if( psz_key )
        {
            const size_t i_len = FUNC7( psz_key ) + 2;
            if( i_len < i_buf )
            {
                /* Only set those which are known as non binary */
                if( !FUNC8( psz_key, "REPLAYGAIN_", 11 ) )
                {
                    char *psz_val_alloc;
                    const char *psz_val = FUNC2( &p_buf[i_len], i_buf - i_len,
                                                       p_buf[0], &psz_val_alloc );
                    if( psz_val )
                    {
                        FUNC9( p_meta, psz_key, psz_val );
                        FUNC6( psz_val_alloc );
                    }
                }
            }
            FUNC6( psz_key_alloc );
            return (FUNC10( p_meta ) > 0);
        }
    }
    else if ( ((const char *) &i_tag)[0] == 'T' )
    {
        for( size_t i=0; i<FUNC0(ID3_tag_to_metatype); i++ )
        {
            if( ID3_tag_to_metatype[i].i_tag == i_tag )
                return FUNC4( p_buf, i_buf,
                                          ID3_tag_to_metatype[i].type,
                                          ID3_tag_to_metatype[i].psz,
                                          p_meta, pb_updated );
        }
    }

    return false;
}