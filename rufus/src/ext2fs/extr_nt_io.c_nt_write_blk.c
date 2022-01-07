
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* io_channel ;
typedef int errcode_t ;
typedef int ULONG ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_8__ {int block_size; int buffer_block_number; int buffer_size; int written; int buffer; int (* write_error ) (TYPE_1__*,unsigned long,int,void const*,int,int ,int ) ;int handle; scalar_t__ offset; scalar_t__ read_only; scalar_t__ private_data; } ;
typedef TYPE_1__* PNT_PRIVATE_DATA ;
typedef TYPE_3__ LARGE_INTEGER ;


 int EACCES ;
 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int EXT2_ET_MAGIC_NT_IO_CHANNEL ;
 int TRUE ;
 int _RawWrite (int ,TYPE_3__,int,void const*,int *) ;
 int assert (int) ;
 int memcpy (int ,void const*,int) ;
 int stub1 (TYPE_1__*,unsigned long,int,void const*,int,int ,int ) ;

__attribute__((used)) static errcode_t nt_write_blk(io_channel channel, unsigned long block, int count, const void *buf)
{
 ULONG write_size;
 LARGE_INTEGER offset;
 PNT_PRIVATE_DATA nt_data = ((void*)0);
 errcode_t errcode = 0;

 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);
 nt_data = (PNT_PRIVATE_DATA) channel->private_data;
 EXT2_CHECK_MAGIC(nt_data, EXT2_ET_MAGIC_NT_IO_CHANNEL);

 if (nt_data->read_only)
  return EACCES;

 if (count == 1) {
  write_size = channel->block_size;
 } else {
  nt_data->buffer_block_number = 0xffffffff;
  if (count < 0)
   write_size = (ULONG)(-count);
  else
   write_size = (ULONG)(count * channel->block_size);
 }


 assert((write_size % 512) == 0);
 offset.QuadPart = block * channel->block_size + nt_data->offset;

 if (!_RawWrite(nt_data->handle, offset, write_size, buf, &errcode)) {
  if (channel->write_error)
   return (channel->write_error)(channel, block, count, buf, write_size, 0, errcode);
  else
   return errcode;
 }



 if(write_size >= nt_data->buffer_size) {
  nt_data->buffer_block_number = block;
  memcpy(nt_data->buffer, buf, nt_data->buffer_size);
 }

 nt_data->written = TRUE;

 return 0;
}
