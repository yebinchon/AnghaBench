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
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_callback ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_wait_num ; 

void
FUNC1(strm_stream* strm, int fd, strm_callback cb)
{
  if (FUNC0(fd, strm, cb) == 0) {
    io_wait_num++;
  }
}