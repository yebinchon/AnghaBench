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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_clock_t ;
struct input_decoder_callbacks {int dummy; } ;
typedef  int /*<<< orphan*/  sout_instance_t ;
typedef  int /*<<< orphan*/  input_resource_t ;
typedef  int /*<<< orphan*/  es_format_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct input_decoder_callbacks const*,void*) ; 

decoder_t *FUNC1( vlc_object_t *parent, es_format_t *fmt,
                             vlc_clock_t *p_clock, input_resource_t *resource,
                             sout_instance_t *p_sout, bool thumbnailing,
                             const struct input_decoder_callbacks *cbs,
                             void *cbs_userdata)
{
    return FUNC0( parent, fmt, p_clock, resource, p_sout, thumbnailing,
                        cbs, cbs_userdata );
}