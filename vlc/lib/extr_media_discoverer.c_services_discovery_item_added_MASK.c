#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* sys; } ;
struct TYPE_14__ {TYPE_1__ owner; } ;
typedef  TYPE_2__ services_discovery_t ;
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_15__ {int b_read_only; } ;
typedef  TYPE_3__ libvlc_media_list_t ;
struct TYPE_16__ {TYPE_3__* p_mlist; int /*<<< orphan*/  catname_to_submedialist; int /*<<< orphan*/  p_libvlc_instance; } ;
typedef  TYPE_4__ libvlc_media_discoverer_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 TYPE_3__* kVLCDictionaryNotFound ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC9( services_discovery_t *sd,
                                           input_item_t *parent,
                                           input_item_t *p_item,
                                           const char *psz_cat )
{
    libvlc_media_t * p_md;
    libvlc_media_discoverer_t *p_mdis = sd->owner.sys;
    libvlc_media_list_t * p_mlist = p_mdis->p_mlist;

    p_md = FUNC4( p_mdis->p_libvlc_instance,
                                             p_item );

    if( parent != NULL )
    {
        /* Flatten items list for now. TODO: tree support. */
    }
    else
    /* If we have a category, that mean we have to group the items having
     * that category in a media_list. */
    if( psz_cat )
    {
        p_mlist = FUNC8( &p_mdis->catname_to_submedialist, psz_cat );

        if( p_mlist == kVLCDictionaryNotFound )
        {
            libvlc_media_t * p_catmd;
            p_catmd = FUNC3( p_mdis->p_libvlc_instance, psz_cat );
            p_mlist = FUNC6( p_catmd );
            p_mlist->b_read_only = true;

            /* Insert the newly created mlist in our dictionary */
            FUNC7( &p_mdis->catname_to_submedialist, psz_cat, p_mlist );

            /* Insert the md into the root list */
            FUNC1( p_mdis->p_mlist );
            FUNC0( p_mdis->p_mlist, p_catmd );
            FUNC2( p_mdis->p_mlist );

            /* We don't release the mlist cause the dictionary
             * doesn't retain the object. But we release the md. */
            FUNC5( p_catmd );
        }
    }

    FUNC1( p_mlist );
    FUNC0( p_mlist, p_md );
    FUNC2( p_mlist );

    FUNC5( p_md );
}