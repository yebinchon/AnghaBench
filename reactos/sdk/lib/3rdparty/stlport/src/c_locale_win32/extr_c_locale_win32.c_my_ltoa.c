
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void my_ltoa(long __x, char* buf) {
  char rbuf[64];
  char* ptr = rbuf;

  if (__x == 0)
    *ptr++ = '0';
  else {
    for (; __x != 0; __x /= 10)
      *ptr++ = (char)(__x % 10) + '0';
  }
  while(ptr > rbuf) *buf++ = *--ptr;

  *buf = '\0';
}
