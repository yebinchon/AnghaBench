
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int mpg123_handle ;


 int DOUBLE_TO_REAL_SCALE_LAYER3 (int ,int) ;
 int * gainpow2 ;
 int pow (double,double) ;

real init_layer3_gainpow2(mpg123_handle *fr, int i)
{



 return DOUBLE_TO_REAL_SCALE_LAYER3(pow((double)2.0,-0.25 * (double) (i+210)),i+256);

}
