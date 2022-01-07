
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ BSWAP_64 (scalar_t__) ;
 scalar_t__ ZBT_MICRO ;
 int fzap_byteswap (void*,size_t) ;
 int mzap_byteswap (void*,size_t) ;

void
zap_byteswap(void *buf, size_t size)
{
 uint64_t block_type = *(uint64_t *)buf;

 if (block_type == ZBT_MICRO || block_type == BSWAP_64(ZBT_MICRO)) {

  mzap_byteswap(buf, size);
 } else {
  fzap_byteswap(buf, size);
 }
}
