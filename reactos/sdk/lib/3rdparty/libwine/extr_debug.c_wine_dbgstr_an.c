
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* dbgstr_an ) (char const*,int) ;} ;


 TYPE_1__ funcs ;
 char const* stub1 (char const*,int) ;

const char *wine_dbgstr_an( const char * s, int n )
{
    return funcs.dbgstr_an(s, n);
}
