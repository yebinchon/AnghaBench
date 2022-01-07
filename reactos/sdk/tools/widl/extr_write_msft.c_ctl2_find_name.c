
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* typelib_namehash_segment; int ** typelib_segment_data; } ;
typedef TYPE_1__ msft_typelib_t ;


 size_t MSFT_SEG_NAME ;
 int strncasecmp (char*,void*,char) ;

__attribute__((used)) static int ctl2_find_name(
 msft_typelib_t *typelib,
 char *name)
{
    int offset;
    int *namestruct;

    offset = typelib->typelib_namehash_segment[name[2] & 0x7f];
    while (offset != -1) {
 namestruct = (int *)&typelib->typelib_segment_data[MSFT_SEG_NAME][offset];

 if (!((namestruct[2] ^ *((int *)name)) & 0xffff00ff)) {

     if (!strncasecmp(name+4, (void *)(namestruct+3), name[0])) break;
 }


 offset = namestruct[1];
    }

    return offset;
}
