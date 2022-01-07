
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bo_t ;


 int bo_set_32be (int *,int ,int ) ;

void box_fix(bo_t *box, uint32_t i_size)
{
    bo_set_32be(box, 0, i_size);
}
