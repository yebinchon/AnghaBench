
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cookie_cache; } ;
typedef TYPE_1__ session_t ;
struct TYPE_7__ {int name; int entry; int cookies; } ;
typedef TYPE_2__ domain_t ;
typedef int WCHAR ;


 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int strdupW (int *) ;

__attribute__((used)) static domain_t *add_domain( session_t *session, WCHAR *name )
{
    domain_t *domain;

    if (!(domain = heap_alloc_zero( sizeof(domain_t) ))) return ((void*)0);

    list_init( &domain->entry );
    list_init( &domain->cookies );

    domain->name = strdupW( name );
    list_add_tail( &session->cookie_cache, &domain->entry );

    TRACE("%s\n", debugstr_w(domain->name));
    return domain;
}
