
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t lsf; int lay; size_t bitrate_index; } ;
typedef TYPE_1__ mpg123_handle ;


 int*** tabsel_123 ;

int frame_bitrate(mpg123_handle *fr)
{
 return tabsel_123[fr->lsf][fr->lay-1][fr->bitrate_index];
}
