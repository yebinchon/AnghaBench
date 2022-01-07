
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transformer_state_t ;


 int bb_error_msg (char*) ;

__attribute__((used)) static long long int unpack_none(transformer_state_t *xstate)
{
 bb_error_msg("This compression type is not supported");
 return -1;
}
