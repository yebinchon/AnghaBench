
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;

void
sa_default_locator(void **dataptr, uint32_t *len, uint32_t total_len,
    boolean_t start, void *userdata)
{
 ASSERT(start);

 *dataptr = userdata;
 *len = total_len;
}
