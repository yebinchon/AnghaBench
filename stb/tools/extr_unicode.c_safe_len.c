
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uval ;



int safe_len(uval *data, int len, uval *end)
{
   if (len > end - data)
      return end - data;
   return len;
}
