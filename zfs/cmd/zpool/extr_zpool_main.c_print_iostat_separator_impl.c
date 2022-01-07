
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iostat_cbdata_t ;


 int print_iostat_dashes (int *,unsigned int,int *) ;

__attribute__((used)) static void
print_iostat_separator_impl(iostat_cbdata_t *cb,
    unsigned int force_column_width)
{
 print_iostat_dashes(cb, force_column_width, ((void*)0));
}
