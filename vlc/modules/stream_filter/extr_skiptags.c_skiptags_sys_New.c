
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skiptags_sys_t {int * p_tags; scalar_t__ header_skip; } ;


 struct skiptags_sys_t* malloc (int) ;

__attribute__((used)) static struct skiptags_sys_t * skiptags_sys_New(void)
{
    struct skiptags_sys_t *sys = malloc(sizeof (*sys));
    if(sys)
    {
        sys->header_skip = 0;
        sys->p_tags = ((void*)0);
    }
    return sys;
}
