
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
pdf_code_from_string(char *buf, int len)
{
 unsigned int a = 0;
 while (len--)
  a = (a << 8) | *(unsigned char *)buf++;
 return a;
}
