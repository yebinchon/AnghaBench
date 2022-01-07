
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_file {int dummy; } ;
typedef int WCHAR ;


 int DIRID_SRCPATH ;
 int * DIRID_get_string (int) ;
 int const* get_inf_dir (struct inf_file const*,unsigned int*) ;
 unsigned int strlenW (int const*) ;

__attribute__((used)) static const WCHAR *get_dirid_subst( const struct inf_file *file, int dirid, unsigned int *len )
{
    const WCHAR *ret;

    if (dirid == DIRID_SRCPATH) return get_inf_dir( file, len );
    ret = DIRID_get_string( dirid );
    if (ret) *len = strlenW(ret);
    return ret;
}
