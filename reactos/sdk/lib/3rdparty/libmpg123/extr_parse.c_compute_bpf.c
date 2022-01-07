
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ framesize; } ;
typedef TYPE_1__ mpg123_handle ;



double compute_bpf(mpg123_handle *fr)
{
 return (fr->framesize > 0) ? fr->framesize + 4.0 : 1.0;
}
