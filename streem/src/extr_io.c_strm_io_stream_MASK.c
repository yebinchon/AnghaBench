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
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_io ;

/* Variables and functions */
#define  STRM_IO_READ 129 
#define  STRM_IO_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

strm_stream*
FUNC5(strm_value iov, int mode)
{
  strm_io io;

  FUNC0(FUNC1(iov));
  io = FUNC3(iov);
  switch (mode) {
  case STRM_IO_READ:
    return FUNC2(io);
  case STRM_IO_WRITE:
    return FUNC4(io);
 default:
   return NULL;
  }
}