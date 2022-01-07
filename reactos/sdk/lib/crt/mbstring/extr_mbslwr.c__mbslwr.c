
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ismbblead (unsigned char) ;
 unsigned char _mbctolower (unsigned short) ;
 unsigned char tolower (unsigned char) ;

unsigned char * _mbslwr(unsigned char *x)
{
    unsigned char *y=x;

    if (x == ((void*)0))
    {
        return ((void*)0);
    }

    while (*y)
    {
        if (!_ismbblead(*y))
        {
            *y = tolower(*y);
            y++;
        }
        else
        {
            *y = _mbctolower(*(unsigned short *)y);
            y++;
        }
    }
    return x;
}
