
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bo_t ;


 int bo_add_mem (int *,size_t,int const*) ;
 int * box_new (char const*) ;

__attribute__((used)) static bo_t *GetxxxxTag(const uint8_t *p_extra, size_t i_extra,
                        const char *tag)
{
    bo_t *box = box_new(tag);
    if(!box)
        return ((void*)0);
    bo_add_mem(box, i_extra, p_extra);
    return box;
}
