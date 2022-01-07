
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* io_channel ;
typedef int errcode_t ;
struct TYPE_6__ {TYPE_1__* manager; } ;
struct TYPE_5__ {int (* cache_readahead ) (TYPE_2__*,unsigned long long,unsigned long long) ;} ;


 int EXT2_ET_OP_NOT_SUPPORTED ;
 int stub1 (TYPE_2__*,unsigned long long,unsigned long long) ;

errcode_t io_channel_cache_readahead(io_channel io, unsigned long long block,
         unsigned long long count)
{
 if (!io->manager->cache_readahead)
  return EXT2_ET_OP_NOT_SUPPORTED;

 return io->manager->cache_readahead(io, block, count);
}
