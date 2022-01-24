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
struct TYPE_4__ {int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  fmt_in; } ;
typedef  TYPE_1__ filter_chain_t ;
typedef  int /*<<< orphan*/  es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4( filter_chain_t *p_chain, const es_format_t *p_fmt_in,
                         const es_format_t *p_fmt_out )
{
    FUNC3( p_chain );

    FUNC0(p_fmt_in != NULL);
    FUNC1( &p_chain->fmt_in );
    FUNC2( &p_chain->fmt_in, p_fmt_in );

    FUNC0(p_fmt_out != NULL);
    FUNC1( &p_chain->fmt_out );
    FUNC2( &p_chain->fmt_out, p_fmt_out );
}