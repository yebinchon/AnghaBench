
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iostat_cbdata_t ;


 int print_iostat_header_impl (int *,int ,int *) ;

__attribute__((used)) static void
print_iostat_header(iostat_cbdata_t *cb)
{
 print_iostat_header_impl(cb, 0, ((void*)0));
}
