#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_type_t ;
typedef  int /*<<< orphan*/  vlc_meta_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,size_t,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC7( const uint8_t *p_buf, size_t i_buf,
                               vlc_meta_type_t type, const char *psz_extra,
                               vlc_meta_t *p_meta, bool *pb_updated )
{
    if( p_meta == NULL )
        return false;

    char *p_alloc;
    const char *psz = FUNC0( p_buf, i_buf, &p_alloc );
    if( psz && *psz )
    {
        const char *psz_old = ( psz_extra ) ? FUNC5( p_meta, psz_extra ):
                                              FUNC4( p_meta, type );
        if( !psz_old || FUNC2( psz_old, psz ) )
        {
            if( pb_updated )
                *pb_updated = true;
            if( psz_extra )
                FUNC3( p_meta, psz_extra, psz );
            else
                FUNC6( p_meta, type, psz );
        }
    }
    FUNC1( p_alloc );

    return (psz != NULL);
}