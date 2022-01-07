
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char v ;



__attribute__((used)) static inline void big32(unsigned char *buf, unsigned int v)
{
 buf[0] = (v >> 24) & 0xff;
 buf[1] = (v >> 16) & 0xff;
 buf[2] = (v >> 8) & 0xff;
 buf[3] = (v) & 0xff;
}
