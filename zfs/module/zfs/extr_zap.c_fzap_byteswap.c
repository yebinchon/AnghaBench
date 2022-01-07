
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ BSWAP_64 (scalar_t__) ;
 scalar_t__ ZBT_LEAF ;
 int byteswap_uint64_array (void*,size_t) ;
 int zap_leaf_byteswap (void*,size_t) ;

void
fzap_byteswap(void *vbuf, size_t size)
{
 uint64_t block_type = *(uint64_t *)vbuf;

 if (block_type == ZBT_LEAF || block_type == BSWAP_64(ZBT_LEAF))
  zap_leaf_byteswap(vbuf, size);
 else {

  byteswap_uint64_array(vbuf, size);
 }
}
