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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_3__ {char* psz_string; } ;
typedef  TYPE_1__ vlc_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_VAR_ADDCHOICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__,char const*) ; 

__attribute__((used)) static void FUNC3( vout_thread_t *p_vout, const char *psz_var,
                             char *psz_list )
{
    FUNC0( psz_list );

    char *psz_cur = psz_list;
    char *psz_next;
    while( psz_cur && *psz_cur )
    {
        vlc_value_t val;
        psz_next = FUNC1( psz_cur, ',' );
        if( psz_next )
        {
            *psz_next = '\0';
            psz_next++;
        }
        val.psz_string = psz_cur;
        FUNC2( p_vout, psz_var, VLC_VAR_ADDCHOICE, val,
                    (const char *)psz_cur );
        psz_cur = psz_next;
    }
}