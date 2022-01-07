
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int dsm_handle ;
typedef int TestParamsWrapper ;


 int Assert (int ) ;
 int CommitTransactionCommand () ;
 int ERROR ;
 int IsTransactionState () ;
 int StartTransactionCommand () ;
 int * dsm_attach (int ) ;
 int * dsm_find_mapping (int ) ;
 int dsm_pin_mapping (int *) ;
 int * dsm_segment_address (int *) ;
 int elog (int ,char*) ;
 int params_get_dsm_handle () ;

__attribute__((used)) static TestParamsWrapper *
params_open_wrapper()
{
 dsm_segment *seg;
 dsm_handle handle = params_get_dsm_handle();
 TestParamsWrapper *wrapper;

 seg = dsm_find_mapping(handle);
 if (seg == ((void*)0))
 {






  seg = dsm_attach(handle);
  if (seg == ((void*)0))
   elog(ERROR, "got NULL segment in params_open_wrapper");





 }

 Assert(seg != ((void*)0));

 wrapper = dsm_segment_address(seg);

 Assert(wrapper != ((void*)0));

 return wrapper;
}
