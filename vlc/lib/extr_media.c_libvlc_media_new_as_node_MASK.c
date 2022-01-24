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
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_ITEM_URI_NOP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

libvlc_media_t * FUNC6( libvlc_instance_t *p_instance,
                                           const char * psz_name )
{
    input_item_t * p_input_item;
    libvlc_media_t * p_md;
    libvlc_media_list_t * p_subitems;

    p_input_item = FUNC0( INPUT_ITEM_URI_NOP, psz_name );

    if (!p_input_item)
    {
        FUNC4( "Not enough memory" );
        return NULL;
    }

    p_md = FUNC2( p_instance, p_input_item );
    FUNC1( p_input_item );

    p_subitems = FUNC5( p_md, true );
    if( p_subitems == NULL) {
        FUNC3( p_md );
        return NULL;
    }

    return p_md;
}