
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum auth_scheme { ____Placeholder_auth_scheme } auth_scheme ;
struct TYPE_2__ {scalar_t__ scheme; } ;
typedef scalar_t__ DWORD ;


 int SCHEME_INVALID ;
 TYPE_1__* auth_schemes ;
 int num_auth_schemes ;

__attribute__((used)) static enum auth_scheme scheme_from_flag( DWORD flag )
{
    int i;

    for (i = 0; i < num_auth_schemes; i++) if (flag == auth_schemes[i].scheme) return i;
    return SCHEME_INVALID;
}
