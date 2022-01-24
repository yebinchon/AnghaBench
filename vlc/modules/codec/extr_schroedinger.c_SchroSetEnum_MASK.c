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
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ encoder_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_schro; } ;
typedef  TYPE_2__ encoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static inline bool FUNC3( encoder_t *p_enc, int i_list_size, const char *list[],
                  const char *psz_name,  const char *psz_name_text,  const char *psz_value)
{
    encoder_sys_t *p_sys = p_enc->p_sys;
    if( list && psz_name_text && psz_name && psz_value ) {
        for( int i = 0; i < i_list_size; ++i ) {
            if( FUNC2( list[i], psz_value ) )
                continue;
            FUNC1( p_sys->p_schro, psz_name, i );
            return true;
        }
        FUNC0( p_enc, "Invalid %s: %s", psz_name_text, psz_value );
    }
    return false;
}