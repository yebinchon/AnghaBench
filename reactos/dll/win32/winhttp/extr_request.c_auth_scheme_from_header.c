
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_2__ {size_t len; int scheme; int str; } ;
typedef int DWORD ;


 TYPE_1__* auth_schemes ;
 unsigned int num_auth_schemes ;
 int strncmpiW (char*,int ,size_t) ;

__attribute__((used)) static DWORD auth_scheme_from_header( WCHAR *header )
{
    unsigned int i;

    for (i = 0; i < num_auth_schemes; i++)
    {
        if (!strncmpiW( header, auth_schemes[i].str, auth_schemes[i].len ) &&
            (header[auth_schemes[i].len] == ' ' || !header[auth_schemes[i].len])) return auth_schemes[i].scheme;
    }
    return 0;
}
