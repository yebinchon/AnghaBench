
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uval ;



uval get_data(uval *data, int offset, uval *end)
{
   if (data + offset >= end)
      return 0;
   else
      return data[offset];
}
