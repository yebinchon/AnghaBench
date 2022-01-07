
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {TYPE_1__* assembly; } ;
struct TYPE_5__ {char const* display_name; } ;
typedef int MSIPACKAGE ;
typedef TYPE_2__ MSICOMPONENT ;
typedef int DWORD ;


 char* msi_alloc (int) ;
 char* resolve_keypath (int *,TYPE_2__*) ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static WCHAR *build_full_keypath( MSIPACKAGE *package, MSICOMPONENT *comp )
{
    if (comp->assembly)
    {
        const WCHAR prefixW[] = {'<','\\',0};
        DWORD len = strlenW( prefixW ) + strlenW( comp->assembly->display_name );
        WCHAR *keypath = msi_alloc( (len + 1) * sizeof(WCHAR) );

        if (keypath)
        {
            strcpyW( keypath, prefixW );
            strcatW( keypath, comp->assembly->display_name );
        }
        return keypath;
    }
    return resolve_keypath( package, comp );
}
