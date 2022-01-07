
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctx ;
 int fz_write_byte (int ,int ,char) ;
 int out ;

__attribute__((used)) static void showtext(char *buf, int indent)
{
 int bol = 1;
 int c = *buf;
 while (*buf)
 {
  c = *buf++;
  if (c == '\r')
  {
   if (*buf == '\n')
    ++buf;
   c = '\n';
  }
  if (indent && bol)
   fz_write_byte(ctx, out, '\t');
  fz_write_byte(ctx, out, c);
  bol = (c == '\n');
 }
 if (!bol)
  fz_write_byte(ctx, out, '\n');
}
