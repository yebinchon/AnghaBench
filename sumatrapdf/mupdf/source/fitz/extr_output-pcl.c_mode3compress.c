
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
mode3compress(unsigned char *out, const unsigned char *in, unsigned char *prev, int in_len)
{
 unsigned char *compressed = out;
 const unsigned char *cur = in;
 const unsigned char *end = in + in_len;

 while (cur < end) {
  const unsigned char *run = cur;
  const unsigned char *diff;
  const unsigned char *stop;
  int offset, cbyte;

  while (cur < end && *cur == *prev) {
   cur++, prev++;
  }
  if (cur == end)
   break;


  diff = cur;
  stop = (end - cur > 8 ? cur + 8 : end);
  do
  {
   *prev++ = *cur++;
  }
  while (cur < stop && *cur != *prev);



  offset = diff - run;
  cbyte = (cur - diff - 1) << 5;
  if (offset < 31)
   *out++ = cbyte + offset;
  else {
   *out++ = cbyte + 31;
   offset -= 31;
   while (offset >= 255)
    *out++ = 255, offset -= 255;
   *out++ = offset;
  }

  while (diff < cur)
   *out++ = *diff++;
 }
 return out - compressed;
}
