
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ul_log2(unsigned long arg)
{
 int l = 0;

 arg >>= 1;
 while (arg) {
  l++;
  arg >>= 1;
 }
 return l;
}
