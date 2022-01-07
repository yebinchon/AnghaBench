
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ ADV_MAGIC1 ;
 scalar_t__ ADV_MAGIC2 ;
 scalar_t__ ADV_MAGIC3 ;
 int ADV_SIZE ;
 scalar_t__ get_32 (scalar_t__*) ;

__attribute__((used)) static int adv_consistent(const unsigned char *p)
{
    int i;
    uint32_t csum;

    if (get_32((uint32_t *) p) != ADV_MAGIC1 ||
 get_32((uint32_t *) (p + ADV_SIZE - 4)) != ADV_MAGIC3)
 return 0;

    csum = 0;
    for (i = 4; i < ADV_SIZE - 4; i += 4)
 csum += get_32((uint32_t *) (p + i));

    return csum == ADV_MAGIC2;
}
