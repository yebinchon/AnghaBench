#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int i_preparse_depth; } ;
typedef  TYPE_1__ vlc_media_tree_t ;
typedef  TYPE_1__ libvlc_int_t ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 int META_REQUEST_OPTION_DO_INTERACT ; 
 int META_REQUEST_OPTION_SCOPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* input_preparser_callbacks ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int,TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(vlc_media_tree_t *tree, libvlc_int_t *libvlc,
                        input_item_t *media)
{
#ifdef TEST_MEDIA_SOURCE
    VLC_UNUSED(tree);
    VLC_UNUSED(libvlc);
    VLC_UNUSED(media);
    VLC_UNUSED(input_preparser_callbacks);
#else
    media->i_preparse_depth = 1;
    FUNC1(libvlc, media, META_REQUEST_OPTION_SCOPE_ANY |
                        META_REQUEST_OPTION_DO_INTERACT,
                        &input_preparser_callbacks, tree, 0, NULL);
#endif
}