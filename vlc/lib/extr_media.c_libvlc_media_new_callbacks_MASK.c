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
struct TYPE_4__ {int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ libvlc_media_t ;
typedef  void* libvlc_media_seek_cb ;
typedef  void* libvlc_media_read_cb ;
typedef  void* libvlc_media_open_cb ;
typedef  void* libvlc_media_close_cb ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

libvlc_media_t *FUNC4(libvlc_instance_t *p_instance,
                                           libvlc_media_open_cb open_cb,
                                           libvlc_media_read_cb read_cb,
                                           libvlc_media_seek_cb seek_cb,
                                           libvlc_media_close_cb close_cb,
                                           void *opaque)
{
    libvlc_media_t *m = FUNC2(p_instance, "imem://");
    if (FUNC3(m == NULL))
        return NULL;

    FUNC0(read_cb != NULL);
    FUNC1(m->p_input_item, "imem-data", opaque);
    FUNC1(m->p_input_item, "imem-open", open_cb);
    FUNC1(m->p_input_item, "imem-read", read_cb);
    FUNC1(m->p_input_item, "imem-seek", seek_cb);
    FUNC1(m->p_input_item, "imem-close", close_cb);
    return m;
}