
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUANT_MASK ;
 unsigned char SEG_SHIFT ;
 int search (int,int ,int) ;
 int seg_aend ;

__attribute__((used)) static inline unsigned char
linear2alaw(int pcm_val)

{
    int mask;
    int seg;
    unsigned char aval;

    pcm_val = pcm_val >> 3;

    if (pcm_val >= 0) {
        mask = 0xD5;
    } else {
        mask = 0x55;
        pcm_val = -pcm_val - 1;
    }


    seg = search(pcm_val, seg_aend, 8);



    if (seg >= 8)
        return (unsigned char) (0x7F ^ mask);
    else {
        aval = (unsigned char) seg << SEG_SHIFT;
        if (seg < 2)
            aval |= (pcm_val >> 1) & QUANT_MASK;
        else
            aval |= (pcm_val >> seg) & QUANT_MASK;
        return (aval ^ mask);
    }
}
