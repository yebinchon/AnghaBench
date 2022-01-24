#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct write_data {int /*<<< orphan*/  f; TYPE_1__* io; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_2__ strm_stream ;
struct TYPE_4__ {int mode; } ;

/* Variables and functions */
 int STRM_IO_FLUSH ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct iovec*,int) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, strm_value data)
{
  struct write_data *d = (struct write_data*)strm->data;
  strm_string p = FUNC6(data);

#ifndef _WIN32
  struct iovec buf[2];

  buf[0].iov_base = (void*)FUNC5(p);
  buf[0].iov_len = FUNC4(p);
  buf[1].iov_base = (void*)"\n";
  buf[1].iov_len = 1;
  if (FUNC7(FUNC1(d->f), buf, 2) < 0) {
    return STRM_NG;
  }
#else
  fwrite(strm_str_ptr(p), strm_str_len(p), 1, d->f);
  fputs("\n", d->f);
  if (d->io->mode & STRM_IO_FLUSH) {
    fflush(d->f);
  }
#endif
  return STRM_OK;
}