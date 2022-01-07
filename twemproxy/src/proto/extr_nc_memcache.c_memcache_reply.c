
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
typedef int rstatus_t ;


 int NC_OK ;
 int NOT_REACHED () ;

rstatus_t
memcache_reply(struct msg *r)
{
    NOT_REACHED();
    return NC_OK;
}
