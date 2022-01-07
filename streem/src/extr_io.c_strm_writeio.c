
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct write_data {TYPE_1__* io; void* f; } ;
typedef int strm_stream ;
typedef TYPE_1__* strm_io ;
typedef int WSANETWORKEVENTS ;
struct TYPE_3__ {int * write_stream; scalar_t__ fd; } ;
typedef int SOCKET ;


 scalar_t__ WSAEnumNetworkEvents (int ,int *,int *) ;
 scalar_t__ _open_osfhandle (scalar_t__,int ) ;
 void* fdopen (scalar_t__,char*) ;
 struct write_data* malloc (int) ;
 int strm_consumer ;
 int * strm_stream_new (int ,int ,int ,void*) ;
 int write_cb ;
 int write_close ;

__attribute__((used)) static strm_stream*
strm_writeio(strm_io io)
{
  struct write_data *d;

  if (!io->write_stream) {
    d = malloc(sizeof(struct write_data));
    d->f = fdopen(io->fd, "w");

    d->io = io;
    io->write_stream = strm_stream_new(strm_consumer, write_cb, write_close, (void*)d);
  }
  return io->write_stream;
}
