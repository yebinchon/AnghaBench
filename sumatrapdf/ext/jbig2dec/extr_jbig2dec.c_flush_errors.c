
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int repeats; } ;
typedef TYPE_1__ jbig2dec_params_t ;


 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void
flush_errors(jbig2dec_params_t *params)
{
    if (params->repeats > 1) {
        fprintf(stderr, "jbig2dec last message repeated %ld times\n", params->repeats);
    }
}
