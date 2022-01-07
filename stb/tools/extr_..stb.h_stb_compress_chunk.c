
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t stb_uint ;
typedef int stb_uchar ;


 size_t STB__SCRAMBLE (size_t) ;
 int STB__TRY (int *,int) ;
 int assert (int) ;
 int outliterals (int *,int) ;
 size_t stb__hc2 (int *,size_t,int,int) ;
 size_t stb__hc3 (int *,int ,int,int) ;
 int stb__running_adler ;
 int stb__window ;
 int stb_adler32 (int ,int *,int) ;
 int stb_out (int) ;
 int stb_out2 (int) ;
 int stb_out3 (int) ;

__attribute__((used)) static int stb_compress_chunk(stb_uchar *history,
                              stb_uchar *start,
                              stb_uchar *end,
                              int length,
                              int *pending_literals,
                              stb_uchar **chash,
                              stb_uint mask)
{
   int window = stb__window;
   stb_uint match_max;
   stb_uchar *lit_start = start - *pending_literals;
   stb_uchar *q = start;






   while (q < start+length && q+12 < end) {
      int m;
      stb_uint h1,h2,h3,h4, h;
      stb_uchar *t;
      int best = 2, dist=0;

      if (q+65536 > end)
         match_max = (stb_uint) (end-q);
      else
         match_max = 65536u;
      h = stb__hc3(q,0, 1, 2); h1 = (((h) + ((h) >> 16)) & mask);
                                      t = chash[h1]; if (t) if (0 ? dist != (int) (q-t) : 1) if ((m = (int) stb_matchlen(t, q, match_max)) > best) if ((((int) (q-(t))) <= window && ((m) > 9 || stb_not_crap(m,(int) (q-(t)))))) best = m, dist = (int) (q - (t));
      h = stb__hc2(q,h, 3, 4); h2 = (((h) + ((h) >> 16)) & mask);
      h = stb__hc2(q,h, 5, 6); t = chash[h2]; if (t) if (1 ? dist != (int) (q-t) : 1) if ((m = (int) stb_matchlen(t, q, match_max)) > best) if ((((int) (q-(t))) <= window && ((m) > 9 || stb_not_crap(m,(int) (q-(t)))))) best = m, dist = (int) (q - (t));
      h = stb__hc2(q,h, 7, 8); h3 = (((h) + ((h) >> 16)) & mask);
      h = stb__hc2(q,h, 9,10); t = chash[h3]; if (t) if (1 ? dist != (int) (q-t) : 1) if ((m = (int) stb_matchlen(t, q, match_max)) > best) if ((((int) (q-(t))) <= window && ((m) > 9 || stb_not_crap(m,(int) (q-(t)))))) best = m, dist = (int) (q - (t));
      h = stb__hc2(q,h,11,12); h4 = (((h) + ((h) >> 16)) & mask);
                                      t = chash[h4]; if (t) if (1 ? dist != (int) (q-t) : 1) if ((m = (int) stb_matchlen(t, q, match_max)) > best) if ((((int) (q-(t))) <= window && ((m) > 9 || stb_not_crap(m,(int) (q-(t)))))) best = m, dist = (int) (q - (t));



      chash[h1] = chash[h2] = chash[h3] = chash[h4] = q;

      if (best > 2)
         assert(dist > 0);


      if (best < 3) {
         ++q;
      } else if (best > 2 && best <= 0x80 && dist <= 0x100) {
         outliterals(lit_start, q-lit_start); lit_start = (q += best);
         stb_out(0x80 + best-1);
         stb_out(dist-1);
      } else if (best > 5 && best <= 0x100 && dist <= 0x4000) {
         outliterals(lit_start, q-lit_start); lit_start = (q += best);
         stb_out2(0x4000 + dist-1);
         stb_out(best-1);
      } else if (best > 7 && best <= 0x100 && dist <= 0x80000) {
         outliterals(lit_start, q-lit_start); lit_start = (q += best);
         stb_out3(0x180000 + dist-1);
         stb_out(best-1);
      } else if (best > 8 && best <= 0x10000 && dist <= 0x80000) {
         outliterals(lit_start, q-lit_start); lit_start = (q += best);
         stb_out3(0x100000 + dist-1);
         stb_out2(best-1);
      } else if (best > 9 && dist <= 0x1000000) {
         if (best > 65536) best = 65536;
         outliterals(lit_start, q-lit_start); lit_start = (q += best);
         if (best <= 0x100) {
            stb_out(0x06);
            stb_out3(dist-1);
            stb_out(best-1);
         } else {
            stb_out(0x04);
            stb_out3(dist-1);
            stb_out2(best-1);
         }
      } else {
         ++q;
      }
   }


   if (q-start < length)
      q = start+length;


   *pending_literals = (int) (q - lit_start);

   stb__running_adler = stb_adler32(stb__running_adler, start, (int) (q - start));
   return (int) (q - start);
}
