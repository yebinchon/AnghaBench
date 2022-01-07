
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float cosf (float) ;
 float sinf (float) ;

void sincosf(float r, float *restrict sr, float *restrict cr)
{
    *sr = sinf(r);
    *cr = cosf(r);
}
