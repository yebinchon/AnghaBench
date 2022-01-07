
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sampling_frequency; } ;
typedef TYPE_1__ mpg123_handle ;


 long* freqs ;

long frame_freq(mpg123_handle *fr)
{
 return freqs[fr->sampling_frequency];
}
