
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TZ_FAIL ;

__attribute__((used)) static int
scan_digit(const char c)
{
  if ('0' <= c && c <= '9') {
    return c - '0';
  }
  else {
    return TZ_FAIL;
  }
}
