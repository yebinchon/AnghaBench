#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  buffer; int /*<<< orphan*/  p_archive; } ;
typedef  TYPE_1__ private_sys_t ;
typedef  int /*<<< orphan*/  libarchive_t ;
struct TYPE_4__ {TYPE_1__* p_sys; int /*<<< orphan*/ * p_source; } ;
typedef  TYPE_2__ libarchive_callback_t ;
typedef  scalar_t__ la_ssize_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static la_ssize_t FUNC3( libarchive_t* p_arc, void* p_obj,
  const void** pp_dst )
{
    FUNC0( p_arc );

    libarchive_callback_t* p_cb = (libarchive_callback_t*)p_obj;

    stream_t*  p_source = p_cb->p_source;
    private_sys_t* p_sys = p_cb->p_sys;

    ssize_t i_ret = FUNC2( p_source, &p_sys->buffer,
      sizeof( p_sys->buffer ) );

    if( i_ret < 0 )
    {
        FUNC1( p_sys->p_archive, ARCHIVE_FATAL,
          "libarchive_read_cb failed = %zd", i_ret );

        return ARCHIVE_FATAL;
    }

    *pp_dst = &p_sys->buffer;
    return i_ret;
}