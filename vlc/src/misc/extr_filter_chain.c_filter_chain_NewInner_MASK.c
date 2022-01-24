#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int b_allow_fmt_out_change; char const* filter_cap; char const* conv_cap; int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  fmt_in; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ filter_chain_t ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static filter_chain_t *FUNC4( vlc_object_t *obj,
    const char *cap, const char *conv_cap, bool fmt_out_change,
    enum es_format_category_e cat )
{
    FUNC0( obj != NULL );
    FUNC0( cap != NULL );

    filter_chain_t *chain = FUNC2( sizeof (*chain) );
    if( FUNC3(chain == NULL) )
        return NULL;

    chain->obj = obj;
    chain->first = NULL;
    chain->last = NULL;
    FUNC1( &chain->fmt_in, cat, 0 );
    FUNC1( &chain->fmt_out, cat, 0 );
    chain->b_allow_fmt_out_change = fmt_out_change;
    chain->filter_cap = cap;
    chain->conv_cap = conv_cap;
    return chain;
}