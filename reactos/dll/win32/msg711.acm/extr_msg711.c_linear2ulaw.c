
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIAS ;
 short CLIP ;
 short search (short,int ,int) ;
 int seg_uend ;

__attribute__((used)) static inline unsigned char
linear2ulaw(short pcm_val)
{
    short mask;
    short seg;
    unsigned char uval;


    pcm_val = pcm_val >> 2;
    if (pcm_val < 0) {
        pcm_val = -pcm_val;
        mask = 0x7F;
    } else {
        mask = 0xFF;
    }
    if ( pcm_val > CLIP ) pcm_val = CLIP;
    pcm_val += (BIAS >> 2);


    seg = search(pcm_val, seg_uend, 8);





    if (seg >= 8)
        return (unsigned char) (0x7F ^ mask);
    else {
        uval = (unsigned char) (seg << 4) | ((pcm_val >> (seg + 1)) & 0xF);
        return (uval ^ mask);
    }
}
