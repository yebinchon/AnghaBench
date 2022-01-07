
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int bo_t ;


 int bo_add_24be (int *,int ) ;
 int bo_add_8 (int *,int ) ;
 int * box_new (char const*) ;

bo_t *box_full_new(const char *fcc, uint8_t v, uint32_t f)
{
    bo_t *box = box_new(fcc);
    if (!box)
        return ((void*)0);

    bo_add_8 (box, v);
    bo_add_24be (box, f);

    return box;
}
