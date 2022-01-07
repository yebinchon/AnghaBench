
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char HIBYTE (int ) ;
 int HIWORD (int) ;

__attribute__((used)) static inline unsigned char C248(int s)
{
    return HIBYTE(HIWORD(s)) ^ (unsigned char)0x80;
}
