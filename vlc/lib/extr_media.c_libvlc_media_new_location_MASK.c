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
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

libvlc_media_t *FUNC4( libvlc_instance_t *p_instance,
                                           const char * psz_mrl )
{
    input_item_t * p_input_item;
    libvlc_media_t * p_md;

    p_input_item = FUNC0( psz_mrl, NULL );

    if (!p_input_item)
    {
        FUNC3( "Not enough memory" );
        return NULL;
    }

    p_md = FUNC2( p_instance, p_input_item );

    /* The p_input_item is retained in libvlc_media_new_from_input_item */
    FUNC1( p_input_item );

    return p_md;
}