
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* io_channel ;
typedef int errcode_t ;
struct TYPE_8__ {TYPE_1__* manager; } ;
struct TYPE_7__ {int (* read_blk ) (TYPE_2__*,unsigned long,int,void*) ;int (* read_blk64 ) (TYPE_2__*,unsigned long long,int,void*) ;} ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 int EXT2_ET_IO_CHANNEL_NO_SUPPORT_64 ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int stub1 (TYPE_2__*,unsigned long long,int,void*) ;
 int stub2 (TYPE_2__*,unsigned long,int,void*) ;

errcode_t io_channel_read_blk64(io_channel channel, unsigned long long block,
     int count, void *data)
{
 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);

 if (channel->manager->read_blk64)
  return (channel->manager->read_blk64)(channel, block,
            count, data);

 if ((block >> 32) != 0)
  return EXT2_ET_IO_CHANNEL_NO_SUPPORT_64;

 return (channel->manager->read_blk)(channel, (unsigned long) block,
          count, data);
}
