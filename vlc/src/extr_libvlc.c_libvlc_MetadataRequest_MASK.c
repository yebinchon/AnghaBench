#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * parser; } ;
typedef  TYPE_1__ libvlc_priv_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
typedef  int /*<<< orphan*/  input_preparser_callbacks_t ;
struct TYPE_7__ {int i_preparse_depth; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ input_item_t ;
typedef  int input_item_meta_request_option_t ;

/* Variables and functions */
 int META_REQUEST_OPTION_SCOPE_ANY ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/  const*,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(libvlc_int_t *libvlc, input_item_t *item,
                           input_item_meta_request_option_t i_options,
                           const input_preparser_callbacks_t *cbs,
                           void *cbs_userdata,
                           int timeout, void *id)
{
    libvlc_priv_t *priv = FUNC1(libvlc);
    FUNC0(i_options & META_REQUEST_OPTION_SCOPE_ANY);

    if (FUNC2(priv->parser == NULL))
        return VLC_ENOMEM;

    FUNC4( &item->lock );
    if( item->i_preparse_depth == 0 )
        item->i_preparse_depth = 1;
    FUNC5( &item->lock );

    return FUNC3(libvlc, item, i_options, cbs, cbs_userdata, timeout, id);
}