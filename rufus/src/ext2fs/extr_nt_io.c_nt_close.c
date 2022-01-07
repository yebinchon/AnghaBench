
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* io_channel ;
typedef int errcode_t ;
struct TYPE_6__ {scalar_t__ refcount; struct TYPE_6__* buffer; int * handle; struct TYPE_6__* name; scalar_t__ private_data; } ;
typedef TYPE_1__* PNT_PRIVATE_DATA ;


 int CloseHandle (int *) ;
 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int EXT2_ET_MAGIC_NT_IO_CHANNEL ;
 int free (TYPE_1__*) ;

__attribute__((used)) static errcode_t nt_close(io_channel channel)
{
 PNT_PRIVATE_DATA nt_data = ((void*)0);

 if (channel == ((void*)0))
  return 0;

 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);
 nt_data = (PNT_PRIVATE_DATA) channel->private_data;
 EXT2_CHECK_MAGIC(nt_data, EXT2_ET_MAGIC_NT_IO_CHANNEL);

 if (--channel->refcount > 0)
  return 0;

 free(channel->name);
 free(channel);

 if (nt_data != ((void*)0)) {
  if (nt_data->handle != ((void*)0))
   CloseHandle(nt_data->handle);
  free(nt_data->buffer);
  free(nt_data);
 }

 return 0;
}
