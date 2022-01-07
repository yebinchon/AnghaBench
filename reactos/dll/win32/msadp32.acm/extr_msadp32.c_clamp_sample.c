
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void clamp_sample(int* sample)
{
    if (*sample < -32768) *sample = -32768;
    if (*sample > 32767) *sample = 32767;
}
