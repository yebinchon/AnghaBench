
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ meta_fetcher_scope_t ;
struct TYPE_3__ {scalar_t__ e_scope; } ;
typedef TYPE_1__ luabatch_context_t ;


 scalar_t__ FETCHER_SCOPE_ANY ;

__attribute__((used)) static bool validate_scope( const luabatch_context_t *p_context, meta_fetcher_scope_t e_scope )
{
    if ( p_context->e_scope == FETCHER_SCOPE_ANY )
        return 1;
    else
        return ( p_context->e_scope == e_scope );
}
