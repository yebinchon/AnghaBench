
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ stb_uint ;
typedef int stb_uchar ;


 int assert (int) ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 scalar_t__ stb__barrier ;
 int * stb__barrier2 ;
 scalar_t__ stb__dout ;

__attribute__((used)) static void stb__lit(stb_uchar *data, stb_uint length)
{
   assert (stb__dout + length <= stb__barrier);
   if (stb__dout + length > stb__barrier) { stb__dout += length; return; }
   if (data < stb__barrier2) { stb__dout = stb__barrier+1; return; }
   memcpy(stb__dout, data, length);
   stb__dout += length;
}
