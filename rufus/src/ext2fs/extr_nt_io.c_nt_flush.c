
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* io_channel ;
typedef int errcode_t ;
struct TYPE_5__ {int handle; scalar_t__ written; scalar_t__ read_only; scalar_t__ private_data; } ;
typedef TYPE_1__* PNT_PRIVATE_DATA ;


 int EXT2_CHECK_MAGIC (TYPE_1__*,int ) ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int EXT2_ET_MAGIC_NT_IO_CHANNEL ;
 int _FlushDrive (int ) ;
 int _SetPartType (int ,int) ;

__attribute__((used)) static errcode_t nt_flush(io_channel channel)
{
 PNT_PRIVATE_DATA nt_data = ((void*)0);

 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);
 nt_data = (PNT_PRIVATE_DATA) channel->private_data;
 EXT2_CHECK_MAGIC(nt_data, EXT2_ET_MAGIC_NT_IO_CHANNEL);

 if(nt_data->read_only)
  return 0;



 _FlushDrive(nt_data->handle);



 if (nt_data->written)
  _SetPartType(nt_data->handle, 0x83);

 return 0;
}
