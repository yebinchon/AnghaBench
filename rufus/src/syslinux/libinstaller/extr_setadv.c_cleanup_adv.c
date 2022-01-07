
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADV_MAGIC1 ;
 int ADV_MAGIC2 ;
 int ADV_MAGIC3 ;
 int ADV_SIZE ;
 scalar_t__ get_32 (int *) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int set_32 (int *,int ) ;

__attribute__((used)) static void cleanup_adv(unsigned char *advbuf)
{
    int i;
    uint32_t csum;


    set_32((uint32_t *) advbuf, ADV_MAGIC1);

    csum = ADV_MAGIC2;
    for (i = 8; i < ADV_SIZE - 4; i += 4)
 csum -= get_32((uint32_t *) (advbuf + i));

    set_32((uint32_t *) (advbuf + 4), csum);
    set_32((uint32_t *) (advbuf + ADV_SIZE - 4), ADV_MAGIC3);

    memcpy(advbuf + ADV_SIZE, advbuf, ADV_SIZE);
}
