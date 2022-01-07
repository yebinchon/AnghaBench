
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int BLEND_SIZE ;
 int BlockBlend (int *,size_t,int const*,size_t,int const*,int ,int ) ;

__attribute__((used)) static void BlockBlendC(uint8_t *dst, size_t dst_pitch,
                        const uint8_t *src, size_t src_pitch,
                        const int16_t *noise)
{
    BlockBlend(dst, dst_pitch, src, src_pitch, noise,
               BLEND_SIZE, BLEND_SIZE);
}
