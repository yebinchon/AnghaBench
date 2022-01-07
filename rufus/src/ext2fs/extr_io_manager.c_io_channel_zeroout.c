
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* io_channel ;
typedef int errcode_t ;
struct TYPE_7__ {TYPE_1__* manager; } ;
struct TYPE_6__ {int (* zeroout ) (TYPE_2__*,unsigned long long,unsigned long long) ;} ;


 int EXT2_CHECK_MAGIC (TYPE_2__*,int ) ;
 int EXT2_ET_MAGIC_IO_CHANNEL ;
 int EXT2_ET_UNIMPLEMENTED ;
 int stub1 (TYPE_2__*,unsigned long long,unsigned long long) ;

errcode_t io_channel_zeroout(io_channel channel, unsigned long long block,
        unsigned long long count)
{
 EXT2_CHECK_MAGIC(channel, EXT2_ET_MAGIC_IO_CHANNEL);

 if (channel->manager->zeroout)
  return (channel->manager->zeroout)(channel, block, count);

 return EXT2_ET_UNIMPLEMENTED;
}
