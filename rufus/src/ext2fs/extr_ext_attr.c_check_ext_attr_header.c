
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_ext_attr_header {scalar_t__ h_magic; int h_blocks; } ;
typedef int errcode_t ;


 int EXT2_ET_BAD_EA_HEADER ;
 scalar_t__ EXT2_EXT_ATTR_MAGIC ;
 scalar_t__ EXT2_EXT_ATTR_MAGIC_v1 ;

__attribute__((used)) static errcode_t check_ext_attr_header(struct ext2_ext_attr_header *header)
{
 if ((header->h_magic != EXT2_EXT_ATTR_MAGIC_v1 &&
      header->h_magic != EXT2_EXT_ATTR_MAGIC) ||
     header->h_blocks != 1)
  return EXT2_ET_BAD_EA_HEADER;

 return 0;
}
