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
struct write_data {TYPE_1__* io; void* f; } ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  TYPE_1__* strm_io ;
typedef  int /*<<< orphan*/  WSANETWORKEVENTS ;
struct TYPE_3__ {int /*<<< orphan*/ * write_stream; scalar_t__ fd; } ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__,char*) ; 
 struct write_data* FUNC3 (int) ; 
 int /*<<< orphan*/  strm_consumer ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/  write_close ; 

__attribute__((used)) static strm_stream*
FUNC5(strm_io io)
{
  struct write_data *d;

  if (!io->write_stream) {
    d = FUNC3(sizeof(struct write_data));

#ifdef _WIN32
    WSANETWORKEVENTS wev;
    if (WSAEnumNetworkEvents((SOCKET) io->fd, NULL, &wev) == 0) {
      d->f = fdopen(_open_osfhandle(io->fd, 0), "w");
    } else
      d->f = fdopen(io->fd, "w");
#else
    d->f = FUNC2(io->fd, "w");
#endif
    d->io = io;
    io->write_stream = FUNC4(strm_consumer, write_cb, write_close, (void*)d);
  }
  return io->write_stream;
}