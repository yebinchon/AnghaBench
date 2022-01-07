
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
mode2compress(unsigned char *out, const unsigned char *in, int in_len)
{
 int x;
 int out_len = 0;
 int run;

 for (x = 0; x < in_len; x += run)
 {

  for (run = 1; run < 127 && x+run < in_len; run++)
   if (in[0] != in[run])
    break;
  if (run > 1)
  {

   out[out_len++] = 257-run;
   out[out_len++] = in[0];
  }
  else
  {



   int i;


   for (; run < 127 && x+run+2 < in_len; run++)
    if (in[run] == in[run+1] && in[run] == in[run+2])
     break;

   if (x + run + 2 >= in_len)
   {
    run = in_len - x;
    if (run > 127)
     run = 127;
   }
   out[out_len++] = run-1;
   for (i = 0; i < run; i++)
   {
    out[out_len++] = in[i];
   }
  }
  in += run;
 }

 return out_len;
}
