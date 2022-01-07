
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned char** typelib_segment_data; int* typelib_segment_block_length; TYPE_1__* typelib_segdir; TYPE_3__* typeinfos; } ;
typedef TYPE_2__ msft_typelib_t ;
struct TYPE_7__ {void* typeinfo; struct TYPE_7__* next_typeinfo; } ;
typedef TYPE_3__ msft_typeinfo_t ;
typedef enum MSFT_segment_index { ____Placeholder_MSFT_segment_index } MSFT_segment_index ;
struct TYPE_5__ {int length; } ;


 int MSFT_SEG_TYPEINFO ;
 int memset (unsigned char*,int,int) ;
 unsigned char* xmalloc (int) ;
 unsigned char* xrealloc (unsigned char*,int) ;

__attribute__((used)) static int ctl2_alloc_segment(
 msft_typelib_t *typelib,
 enum MSFT_segment_index segment,
 int size,
 int block_size)
{
    int offset;

    if(!typelib->typelib_segment_data[segment]) {
 if (!block_size) block_size = 0x2000;

 typelib->typelib_segment_block_length[segment] = block_size;
 typelib->typelib_segment_data[segment] = xmalloc(block_size);
 if (!typelib->typelib_segment_data[segment]) return -1;
 memset(typelib->typelib_segment_data[segment], 0x57, block_size);
    }

    while ((typelib->typelib_segdir[segment].length + size) > typelib->typelib_segment_block_length[segment]) {
 unsigned char *block;

 block_size = typelib->typelib_segment_block_length[segment];
 block = xrealloc(typelib->typelib_segment_data[segment], block_size << 1);

 if (segment == MSFT_SEG_TYPEINFO) {

     msft_typeinfo_t *typeinfo;

     for (typeinfo = typelib->typeinfos; typeinfo; typeinfo = typeinfo->next_typeinfo) {
  typeinfo->typeinfo = (void *)&block[((unsigned char *)typeinfo->typeinfo) - typelib->typelib_segment_data[segment]];
     }
 }

 memset(block + block_size, 0x57, block_size);
 typelib->typelib_segment_block_length[segment] = block_size << 1;
 typelib->typelib_segment_data[segment] = block;
    }

    offset = typelib->typelib_segdir[segment].length;
    typelib->typelib_segdir[segment].length += size;

    return offset;
}
