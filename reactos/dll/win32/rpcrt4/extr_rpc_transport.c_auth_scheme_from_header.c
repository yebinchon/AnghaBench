
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_3__ {size_t len; int scheme; int str; } ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* auth_schemes ;
 int strncmpiW (char const*,int ,size_t) ;

__attribute__((used)) static DWORD auth_scheme_from_header( const WCHAR *header )
{
    unsigned int i;
    for (i = 0; i < ARRAY_SIZE(auth_schemes); i++)
    {
        if (!strncmpiW( header, auth_schemes[i].str, auth_schemes[i].len ) &&
            (header[auth_schemes[i].len] == ' ' || !header[auth_schemes[i].len])) return auth_schemes[i].scheme;
    }
    return 0;
}
