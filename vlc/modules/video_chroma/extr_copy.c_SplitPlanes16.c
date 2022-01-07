
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SPLIT_PLANES (int ,int) ;
 int SPLIT_PLANES_SHIFTL (int ,int,int) ;
 int SPLIT_PLANES_SHIFTR (int ,int,int) ;
 int uint16_t ;

__attribute__((used)) static void SplitPlanes16(uint8_t *dstu, size_t dstu_pitch,
                          uint8_t *dstv, size_t dstv_pitch,
                          const uint8_t *src, size_t src_pitch, unsigned height,
                          int bitshift)
{
    if (bitshift == 0)
        SPLIT_PLANES(uint16_t, 4);
    else if (bitshift > 0)
        SPLIT_PLANES_SHIFTR(uint16_t, 4, bitshift & 0xf);
    else
        SPLIT_PLANES_SHIFTL(uint16_t, 4, (-bitshift) & 0xf);
}
