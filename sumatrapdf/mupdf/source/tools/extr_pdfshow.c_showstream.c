
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;


 int ctx ;
 int doc ;
 int fz_drop_stream (int ,int *) ;
 size_t fz_read (int ,int *,unsigned char*,int) ;
 int fz_write_data (int ,int ,unsigned char*,size_t) ;
 int out ;
 int * pdf_open_raw_stream_number (int ,int ,int) ;
 int * pdf_open_stream_number (int ,int ,int) ;
 scalar_t__ showbinary ;
 scalar_t__ showcolumn ;
 scalar_t__ showdecode ;
 int showsafe (unsigned char*,size_t) ;

__attribute__((used)) static void showstream(int num)
{
 fz_stream *stm;
 unsigned char buf[2048];
 size_t n;

 showcolumn = 0;

 if (showdecode)
  stm = pdf_open_stream_number(ctx, doc, num);
 else
  stm = pdf_open_raw_stream_number(ctx, doc, num);

 while (1)
 {
  n = fz_read(ctx, stm, buf, sizeof buf);
  if (n == 0)
   break;
  if (showbinary)
   fz_write_data(ctx, out, buf, n);
  else
   showsafe(buf, n);
 }

 fz_drop_stream(ctx, stm);
}
