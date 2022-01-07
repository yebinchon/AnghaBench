
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opj_opterr ;
 int opj_optind ;

void opj_reset_options_reading(void)
{
    opj_opterr = 1;
    opj_optind = 1;
}
