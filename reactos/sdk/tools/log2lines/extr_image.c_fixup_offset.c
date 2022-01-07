
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ABS_TRESHOLD ;

size_t
fixup_offset(size_t ImageBase, size_t offset)
{
    if (offset > ABS_TRESHOLD)
        offset -= ImageBase;
    return offset;
}
