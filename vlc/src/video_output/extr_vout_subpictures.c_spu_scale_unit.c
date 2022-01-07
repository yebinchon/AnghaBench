
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spu_scale_t ;


 int SCALE_UNIT ;
 int spu_scale_create (int ,int ) ;

__attribute__((used)) static spu_scale_t spu_scale_unit(void)
{
    return spu_scale_create(SCALE_UNIT, SCALE_UNIT);
}
