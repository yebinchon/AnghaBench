
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int result_t ;
typedef int method_state_t ;
typedef int config_t ;


 int advanced_one_pass_compress_output_adjustment (int *,int const*,int ) ;

__attribute__((used)) static result_t advanced_one_pass_compress(
    method_state_t* base,
    config_t const* config) {
  return advanced_one_pass_compress_output_adjustment(base, config, 0);
}
