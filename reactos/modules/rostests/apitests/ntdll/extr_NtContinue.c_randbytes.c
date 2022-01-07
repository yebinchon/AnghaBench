
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_BIT ;
 int UCHAR_MAX ;
 size_t nRandBytes ;
 int rand () ;

__attribute__((used)) static void randbytes(void * p, size_t n)
{
    unsigned char * b;
    size_t i;
    int r = rand();

    b = (unsigned char *)p;
    for(i = 0; i < n; ++ i)
    {
        if(i % nRandBytes == 0)
        r = rand();
        b[i] = (unsigned char)(r & UCHAR_MAX);
        r >>= CHAR_BIT;
    }
}
