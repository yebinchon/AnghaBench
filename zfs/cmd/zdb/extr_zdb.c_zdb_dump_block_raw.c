
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int VERIFY (int) ;
 int ZDB_FLAG_BSWAP ;
 int byteswap_uint64_array (void*,scalar_t__) ;
 int fileno (int ) ;
 int stdout ;
 scalar_t__ write (int ,void*,scalar_t__) ;

__attribute__((used)) static void
zdb_dump_block_raw(void *buf, uint64_t size, int flags)
{
 if (flags & ZDB_FLAG_BSWAP)
  byteswap_uint64_array(buf, size);
 VERIFY(write(fileno(stdout), buf, size) == size);
}
