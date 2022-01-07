
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 double fabsf (float) ;

__attribute__((used)) static BOOL near_equal(float a, float b)
{
    return fabsf(a - b) < 0.001;
}
