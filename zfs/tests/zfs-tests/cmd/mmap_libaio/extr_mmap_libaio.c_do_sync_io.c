
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_0; int member_1; } ;
struct iocb {int dummy; } ;
struct io_event {int dummy; } ;


 int err (int,char*) ;
 int io_ctx ;
 int io_getevents (int ,int ,int,struct io_event*,struct timespec*) ;
 int io_submit (int ,int,struct iocb**) ;

__attribute__((used)) static void
do_sync_io(struct iocb *iocb)
{
 struct io_event event;
 struct iocb *iocbs[] = { iocb };
 struct timespec ts = { 30, 0 };

 if (io_submit(io_ctx, 1, iocbs) != 1)
  err(1, "io_submit failed");

 if (io_getevents(io_ctx, 0, 1, &event, &ts) != 1)
  err(1, "io_getevents failed");
}
