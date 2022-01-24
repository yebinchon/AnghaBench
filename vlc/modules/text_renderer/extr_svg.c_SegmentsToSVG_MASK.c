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
struct TYPE_3__ {int /*<<< orphan*/  psz_text; struct TYPE_3__* p_next; } ;
typedef  TYPE_1__ text_segment_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char * FUNC3( text_segment_t *p_segment, int i_height, int *pi_total_size )
{
    char *psz_result = NULL;

    i_height = 6 * i_height / 100;
    *pi_total_size = 0;

    for( ; p_segment; p_segment = p_segment->p_next )
    {
        char *psz_prev = psz_result;
        char *psz_encoded = FUNC2( p_segment->psz_text );
        if( FUNC0( &psz_result, "%s<tspan x='0' dy='%upx'>%s</tspan>\n",
                                   (psz_prev) ? psz_prev : "",
                                    i_height,
                                    psz_encoded ) < 0 )
            psz_result = NULL;
        FUNC1( psz_prev );
        FUNC1( psz_encoded );

        *pi_total_size += i_height;
    }

    return psz_result;
}