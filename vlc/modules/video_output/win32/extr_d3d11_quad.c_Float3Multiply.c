
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void Float3Multiply(const double in[3], const double mult[3 * 3], double out[3])
{
    for (size_t i=0; i<3; i++)
    {
        out[i] = mult[i + 0*3] * in[0] +
                 mult[i + 1*3] * in[1] +
                 mult[i + 2*3] * in[2];
    }
}
