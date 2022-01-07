
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {TYPE_2__* Domains; } ;
struct TYPE_5__ {int Buffer; } ;
struct TYPE_6__ {TYPE_1__ Name; } ;
typedef TYPE_3__ LSA_REFERENCED_DOMAIN_LIST ;


 int * heap_strdupW (int ) ;

__attribute__((used)) static WCHAR *get_referenceddomainname( LSA_REFERENCED_DOMAIN_LIST *domain )
{
    if (!domain || !domain->Domains || !domain->Domains->Name.Buffer) return ((void*)0);
    return heap_strdupW( domain->Domains->Name.Buffer );
}
