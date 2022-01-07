
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct v4l2_fract {int denominator; scalar_t__ numerator; } ;
typedef int int64_t ;



__attribute__((used)) static int64_t fcmp (const struct v4l2_fract *a,
                     const struct v4l2_fract *b)
{
    return (uint64_t)a->numerator * b->denominator
         - (uint64_t)b->numerator * a->denominator;
}
