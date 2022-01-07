
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {char const* (* dbgstr_wn ) (int const*,int) ;} ;


 TYPE_1__ funcs ;
 char const* stub1 (int const*,int) ;

const char *wine_dbgstr_wn( const WCHAR *s, int n )
{
    return funcs.dbgstr_wn(s, n);
}
