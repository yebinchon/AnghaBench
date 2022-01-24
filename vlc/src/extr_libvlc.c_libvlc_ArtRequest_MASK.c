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
struct TYPE_3__ {int /*<<< orphan*/ * parser; } ;
typedef  TYPE_1__ libvlc_priv_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;
typedef  int /*<<< orphan*/  input_item_t ;
typedef  int input_item_meta_request_option_t ;
typedef  int /*<<< orphan*/  input_fetcher_callbacks_t ;

/* Variables and functions */
 int META_REQUEST_OPTION_FETCH_ANY ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(libvlc_int_t *libvlc, input_item_t *item,
                      input_item_meta_request_option_t i_options,
                      const input_fetcher_callbacks_t *cbs,
                      void *cbs_userdata)
{
    libvlc_priv_t *priv = FUNC2(libvlc);
    FUNC0(i_options & META_REQUEST_OPTION_FETCH_ANY);

    if (FUNC3(priv->parser == NULL))
        return VLC_ENOMEM;

    FUNC1(priv->parser, item, i_options,
                                 cbs, cbs_userdata);
    return VLC_SUCCESS;
}