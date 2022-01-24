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
typedef  int /*<<< orphan*/  vlc_meta_t ;
struct decoder_owner {int /*<<< orphan*/  lock; scalar_t__ p_description; int /*<<< orphan*/  fmt; int /*<<< orphan*/  b_fmt_description; } ;
typedef  int /*<<< orphan*/  es_format_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7( decoder_t *p_dec, es_format_t *p_fmt, vlc_meta_t **pp_meta )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    if( !FUNC0( &p_owner->b_fmt_description, false,
                                   memory_order_acquire ) )
        return false;

    FUNC5( &p_owner->lock );
    if( p_fmt != NULL )
        FUNC2( p_fmt, &p_owner->fmt );

    if( pp_meta )
    {
        *pp_meta = NULL;
        if( p_owner->p_description )
        {
            *pp_meta = FUNC4();
            if( *pp_meta )
                FUNC3( *pp_meta, p_owner->p_description );
        }
    }
    FUNC6( &p_owner->lock );
    return true;
}