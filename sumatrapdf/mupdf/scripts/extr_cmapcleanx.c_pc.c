
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,unsigned int) ;

__attribute__((used)) static void pc(unsigned int c)
{
 if (c <= 0xff) printf("<%02x>", c);
 else if (c <= 0xffff) printf("<%04x>", c);
 else if (c <= 0xffffff) printf("<%06x>", c);
 else printf("<%010x>", c);
}
