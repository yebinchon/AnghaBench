
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_wait_activity_t ;
typedef int uint64_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int wait_common (char const*,int ,int ,int ,int *) ;

int
lzc_wait_tag(const char *pool, zpool_wait_activity_t activity, uint64_t tag,
    boolean_t *waited)
{
 return (wait_common(pool, activity, B_TRUE, tag, waited));
}
