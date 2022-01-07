
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int TestParamsWrapper ;


 int Assert (int ) ;
 int dsm_detach (int *) ;
 int * dsm_find_mapping (int ) ;
 int params_get_dsm_handle () ;

__attribute__((used)) static void
params_close_wrapper(TestParamsWrapper *wrapper)
{
 dsm_segment *seg = dsm_find_mapping(params_get_dsm_handle());

 Assert(seg != ((void*)0));
 dsm_detach(seg);
}
