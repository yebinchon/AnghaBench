#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  libarchive_t ;
struct TYPE_2__ {int /*<<< orphan*/ * p_source; } ;
typedef  TYPE_1__ libarchive_callback_t ;
typedef  scalar_t__ la_int64_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_FATAL ; 
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static la_int64_t FUNC5( libarchive_t* p_arc, void* p_obj,
  la_int64_t offset, int whence )
{
    FUNC0( p_arc );

    libarchive_callback_t* p_cb = (libarchive_callback_t*)p_obj;
    stream_t* p_source = p_cb->p_source;

    ssize_t whence_pos;

    switch( whence )
    {
        case SEEK_SET: whence_pos = 0;                           break;
        case SEEK_CUR: whence_pos = FUNC4( p_source ); break;
        case SEEK_END: whence_pos = FUNC1( p_source ); break;
              default: FUNC2();

    }

    if( whence_pos < 0 || FUNC3( p_source, whence_pos + offset ) )
        return ARCHIVE_FATAL;

    return FUNC4( p_source );
}