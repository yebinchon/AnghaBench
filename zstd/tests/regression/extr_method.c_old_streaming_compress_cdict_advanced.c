
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result_t ;
typedef int method_state_t ;
typedef int config_t ;


 int old_streaming_compress_internal (int *,int const*,int,int) ;

__attribute__((used)) static result_t old_streaming_compress_cdict_advanced(
    method_state_t* base,
    config_t const* config)
{
    return old_streaming_compress_internal(
        base, config, 1, 1);
}
