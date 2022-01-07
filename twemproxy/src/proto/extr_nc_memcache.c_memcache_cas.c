
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {scalar_t__ type; } ;


 scalar_t__ MSG_REQ_MC_CAS ;

__attribute__((used)) static bool
memcache_cas(struct msg *r)
{
    if (r->type == MSG_REQ_MC_CAS) {
        return 1;
    }

    return 0;
}
