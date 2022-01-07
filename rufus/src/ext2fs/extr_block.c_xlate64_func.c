
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlate64 {int (* func ) (int ,scalar_t__*,int ,scalar_t__,int,int ) ;int real_private; } ;
typedef int ext2_filsys ;
typedef int e2_blkcnt_t ;
typedef scalar_t__ blk_t ;
typedef scalar_t__ blk64_t ;


 int stub1 (int ,scalar_t__*,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int xlate64_func(ext2_filsys fs, blk64_t *blocknr,
   e2_blkcnt_t blockcnt, blk64_t ref_blk,
   int ref_offset, void *priv_data)
{
 struct xlate64 *xl = (struct xlate64 *) priv_data;
 int ret;
 blk_t block32 = *blocknr;

 ret = (*xl->func)(fs, &block32, blockcnt, (blk_t) ref_blk, ref_offset,
        xl->real_private);
 *blocknr = block32;
 return ret;
}
