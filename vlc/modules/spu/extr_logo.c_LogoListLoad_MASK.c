#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int i_alpha; int i_delay; int /*<<< orphan*/  p_pic; } ;
typedef  TYPE_1__ logo_t ;
struct TYPE_6__ {int i_counter; int i_count; TYPE_1__* p_logo; scalar_t__ i_next_pic; } ;
typedef  TYPE_2__ logo_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char const*) ; 
 unsigned int FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( vlc_object_t *p_this, logo_list_t *p_logo_list,
                          const char *psz_filename )
{
    char *psz_list; /* the list: <logo>[,[<delay>[,[<alpha>]]]][;...] */
    char *psz_original;
    logo_t *p_logo;         /* the parsing's result */

    p_logo_list->i_counter = 0;
    p_logo_list->i_next_pic = 0;

    psz_original = psz_list = FUNC7( psz_filename );

    if( !psz_list )
        return;

    /* Count the number logos == number of ';' + 1 */
    p_logo_list->i_count = 1;
    for( unsigned i = 0; i < FUNC8( psz_list ); i++ )
    {
        if( psz_list[i] == ';' )
            p_logo_list->i_count++;
    }

    p_logo_list->p_logo =
    p_logo              = FUNC2( p_logo_list->i_count, sizeof(*p_logo) );

    if( !p_logo )
    {
        FUNC3( psz_list );
        return;
    }

    /* Fill the data */
    for( unsigned i = 0; i < p_logo_list->i_count; i++ )
    {
        char *p_c  = FUNC6( psz_list, ';' );
        char *p_c2 = FUNC6( psz_list, ',' );

        p_logo[i].i_alpha = -1; /* use default settings */
        p_logo[i].i_delay = -1; /* use default settings */

        if( p_c2 && ( p_c2 < p_c || !p_c ) )
        {
            /* <logo>,<delay>[,<alpha>] type */
            if( p_c2[1] != ',' && p_c2[1] != ';' && p_c2[1] != '\0' )
                p_logo[i].i_delay = FUNC1( p_c2+1 );
            *p_c2 = '\0';
            if( ( p_c2 = FUNC6( p_c2+1, ',' ) )
                && ( p_c2 < p_c || !p_c ) && p_c2[1] != ';' && p_c2[1] != '\0' )
                p_logo[i].i_alpha = FUNC1( p_c2 + 1 );
        }
        else
        {
            /* <logo> type */
            if( p_c )
                *p_c = '\0';
        }

        FUNC4( p_this, "logo file name %s, delay %d, alpha %d",
                 psz_list, p_logo[i].i_delay, p_logo[i].i_alpha );
        p_logo[i].p_pic = FUNC0( p_this, psz_list );
        if( !p_logo[i].p_pic )
        {
            FUNC5( p_this, "error while loading logo %s, will be skipped",
                      psz_list );
        }

        if( p_c )
            psz_list = &p_c[1];
    }

    /* initialize so that on the first update it will wrap back to 0 */
    p_logo_list->i_counter = p_logo_list->i_count - 1;

    FUNC3( psz_original );
}