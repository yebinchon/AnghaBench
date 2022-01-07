
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int output_format; } ;
typedef TYPE_1__ jbig2dec_params_t ;


 int jbig2dec_format_pbm ;
 int jbig2dec_format_png ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int
set_output_format(jbig2dec_params_t *params, const char *format)
{
    params->output_format = jbig2dec_format_pbm;

    return 0;
}
