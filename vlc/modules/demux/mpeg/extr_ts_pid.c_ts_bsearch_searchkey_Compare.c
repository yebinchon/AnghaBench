
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_pid; } ;
typedef TYPE_1__ ts_pid_t ;
struct searchkey {scalar_t__ i_pid; void const* pp_last; } ;



__attribute__((used)) static int ts_bsearch_searchkey_Compare( const void *key, const void *other )
{
    struct searchkey *p_key = (void *)key;
    ts_pid_t *const *pp_pid = other;

    ts_pid_t *p_pid = *pp_pid;
    p_key->pp_last = other;
    return ( p_key->i_pid >= p_pid->i_pid ) ? p_key->i_pid - p_pid->i_pid : -1;
}
