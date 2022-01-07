
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int byteCounter ;
 int leftMask ;
 int rightMask ;

void
get_masks(int x, int w)
{
    register int tmp;

    leftMask = rightMask = 0;
    byteCounter = w;

    tmp = (x+w) & 7;
    if (tmp)
    {
        byteCounter -= tmp;
        rightMask = (unsigned char)(0xff00 >> tmp);
    }

    tmp = x & 7;
    if (tmp)
    {
        byteCounter -= (8 - tmp);
        leftMask = (0xff >> tmp);
    }

    if (byteCounter < 0)
    {
        leftMask &= rightMask;
        rightMask = 0;
        byteCounter = 0;
    }
    byteCounter /= 8;
}
