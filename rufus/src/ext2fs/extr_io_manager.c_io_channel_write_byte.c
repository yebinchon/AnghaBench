
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* io_channel ;
typedef int errcode_t ;
struct TYPE_7__ {TYPE_1__* manager; } ;
struct TYPE_6__ {int (* write_byte ) (TYPE_2__*,unsigned long,int,void const*) ;} ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int EXT2_ET_UNIMPLEMENTED ;
 int stub1 (TYPE_2__*,unsigned long,int,void const*) ;

errcode_t io_channel_write_byte(io_channel channel, unsigned long offset,
    int count, const void *data)
{
 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);

 if (channel->manager->write_byte)
  return channel->manager->write_byte(channel, offset,
          count, data);

 return EXT2_ET_UNIMPLEMENTED;
}
