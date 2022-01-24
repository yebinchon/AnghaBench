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
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_4__ {int e_policy; int b_autoselect; int i_id; int i_channel; int i_demux_id; scalar_t__* ppsz_language; int /*<<< orphan*/ * p_main_es; scalar_t__ i_count; } ;
typedef  TYPE_1__ es_out_es_props_t ;
typedef  enum es_out_policy_e { ____Placeholder_es_out_policy_e } es_out_policy_e ;
struct TYPE_5__ {int /*<<< orphan*/  b_preparsing; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC6( es_out_es_props_t *p_props,
                            bool autoselect,
                            input_thread_t *p_input,
                            enum es_out_policy_e e_default_policy,
                            const char *psz_trackidvar,
                            const char *psz_trackvar,
                            const char *psz_langvar,
                            const char *psz_debug )
{
    p_props->e_policy = e_default_policy;
    p_props->i_count = 0;
    p_props->b_autoselect = autoselect;
    p_props->i_id = (psz_trackidvar) ? FUNC4( p_input, psz_trackidvar ): -1;
    p_props->i_channel = (psz_trackvar) ? FUNC4( p_input, psz_trackvar ): -1;
    p_props->i_demux_id = -1;
    p_props->p_main_es = NULL;

    if( !FUNC2(p_input)->b_preparsing && psz_langvar )
    {
        char *psz_string = FUNC5( p_input, psz_langvar );
        p_props->ppsz_language = FUNC0( psz_string );
        if( p_props->ppsz_language )
        {
            for( int i = 0; p_props->ppsz_language[i]; i++ )
                FUNC3( p_input, "selected %s language[%d] %s",
                         psz_debug, i, p_props->ppsz_language[i] );
        }
        FUNC1( psz_string );
    }
}