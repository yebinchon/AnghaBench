
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi__uint8 ;
typedef int stbi ;


 int* convert_format (int*,int,int,int,int) ;
 int* epuc (char*,char*) ;
 int get16 (int *) ;
 int get32 (int *) ;
 int get8 (int *) ;
 int get8u (int *) ;
 scalar_t__ malloc (int) ;
 int skip (int *,int) ;

__attribute__((used)) static stbi_uc *psd_load(stbi *s, int *x, int *y, int *comp, int req_comp)
{
   int pixelCount;
   int channelCount, compression;
   int channel, i, count, len;
   int w,h;
   stbi__uint8 *out;


   if (get32(s) != 0x38425053)
      return epuc("not PSD", "Corrupt PSD image");


   if (get16(s) != 1)
      return epuc("wrong version", "Unsupported version of PSD image");


   skip(s, 6 );


   channelCount = get16(s);
   if (channelCount < 0 || channelCount > 16)
      return epuc("wrong channel count", "Unsupported number of channels in PSD image");


   h = get32(s);
   w = get32(s);


   if (get16(s) != 8)
      return epuc("unsupported bit depth", "PSD bit depth is not 8 bit");
   if (get16(s) != 3)
      return epuc("wrong color format", "PSD is not in RGB color format");


   skip(s,get32(s) );


   skip(s, get32(s) );


   skip(s, get32(s) );





   compression = get16(s);
   if (compression > 1)
      return epuc("bad compression", "PSD has an unknown compression format");


   out = (stbi_uc *) malloc(4 * w*h);
   if (!out) return epuc("outofmem", "Out of memory");
   pixelCount = w*h;





   if (compression) {
      skip(s, h * channelCount * 2 );


      for (channel = 0; channel < 4; channel++) {
         stbi__uint8 *p;

         p = out+channel;
         if (channel >= channelCount) {

            for (i = 0; i < pixelCount; i++) *p = (channel == 3 ? 255 : 0), p += 4;
         } else {

            count = 0;
            while (count < pixelCount) {
               len = get8(s);
               if (len == 128) {

               } else if (len < 128) {

                  len++;
                  count += len;
                  while (len) {
                     *p = get8u(s);
                     p += 4;
                     len--;
                  }
               } else if (len > 128) {
                  stbi__uint8 val;


                  len ^= 0x0FF;
                  len += 2;
                  val = get8u(s);
                  count += len;
                  while (len) {
                     *p = val;
                     p += 4;
                     len--;
                  }
               }
            }
         }
      }

   } else {




      for (channel = 0; channel < 4; channel++) {
         stbi__uint8 *p;

         p = out + channel;
         if (channel > channelCount) {

            for (i = 0; i < pixelCount; i++) *p = channel == 3 ? 255 : 0, p += 4;
         } else {

            for (i = 0; i < pixelCount; i++)
               *p = get8u(s), p += 4;
         }
      }
   }

   if (req_comp && req_comp != 4) {
      out = convert_format(out, 4, req_comp, w, h);
      if (out == ((void*)0)) return out;
   }

   if (comp) *comp = channelCount;
   *y = h;
   *x = w;

   return out;
}
