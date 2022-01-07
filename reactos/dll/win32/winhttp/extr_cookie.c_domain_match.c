
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* name; } ;
typedef TYPE_1__ domain_t ;
typedef int WCHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int TRACE (char*,int ,int ) ;
 scalar_t__ TRUE ;
 int debugstr_w (int const*) ;
 scalar_t__ strcmpW (int const*,int const*) ;
 int strstrW (int const*,int const*) ;

__attribute__((used)) static BOOL domain_match( const WCHAR *name, domain_t *domain, BOOL partial )
{
    TRACE("comparing %s with %s\n", debugstr_w(name), debugstr_w(domain->name));

    if (partial && !strstrW( name, domain->name )) return FALSE;
    else if (!partial && strcmpW( name, domain->name )) return FALSE;
    return TRUE;
}
