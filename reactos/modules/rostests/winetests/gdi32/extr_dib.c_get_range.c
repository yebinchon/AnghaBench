
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef size_t BYTE ;


 int* ramp ;

__attribute__((used)) static inline void get_range(BYTE alpha, DWORD text_comp, BYTE *min_comp, BYTE *max_comp)
{
    *min_comp = (ramp[alpha] * text_comp) / 0xff;
    *max_comp = ramp[16 - alpha] + ((0xff - ramp[16 - alpha]) * text_comp) / 0xff;
}
