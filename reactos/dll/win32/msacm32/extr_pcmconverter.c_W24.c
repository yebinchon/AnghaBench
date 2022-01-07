
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char HIBYTE (int ) ;
 int HIWORD (int) ;
 unsigned char LOBYTE (int ) ;
 int LOWORD (int) ;

__attribute__((used)) static inline void W24(unsigned char* dst, int s)
{
    dst[0] = HIBYTE(LOWORD(s));
    dst[1] = LOBYTE(HIWORD(s));
    dst[2] = HIBYTE(HIWORD(s));
}
