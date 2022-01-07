
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int check_zero_block(char *buf, int blocksize)
{
 char *cp = buf;
 int left = blocksize;

 while (left > 0) {
  if (*cp++)
   return 0;
  left--;
 }
 return 1;
}
