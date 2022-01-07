
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint32 ;
typedef int stb__wchar ;



stb__wchar * stb_from_utf8(stb__wchar *buffer, char *ostr, int n)
{
   unsigned char *str = (unsigned char *) ostr;
   stb_uint32 c;
   int i=0;
   --n;
   while (*str) {
      if (i >= n)
         return ((void*)0);
      if (!(*str & 0x80))
         buffer[i++] = *str++;
      else if ((*str & 0xe0) == 0xc0) {
         if (*str < 0xc2) return ((void*)0);
         c = (*str++ & 0x1f) << 6;
         if ((*str & 0xc0) != 0x80) return ((void*)0);
         buffer[i++] = c + (*str++ & 0x3f);
      } else if ((*str & 0xf0) == 0xe0) {
         if (*str == 0xe0 && (str[1] < 0xa0 || str[1] > 0xbf)) return ((void*)0);
         if (*str == 0xed && str[1] > 0x9f) return ((void*)0);
         c = (*str++ & 0x0f) << 12;
         if ((*str & 0xc0) != 0x80) return ((void*)0);
         c += (*str++ & 0x3f) << 6;
         if ((*str & 0xc0) != 0x80) return ((void*)0);
         buffer[i++] = c + (*str++ & 0x3f);
      } else if ((*str & 0xf8) == 0xf0) {
         if (*str > 0xf4) return ((void*)0);
         if (*str == 0xf0 && (str[1] < 0x90 || str[1] > 0xbf)) return ((void*)0);
         if (*str == 0xf4 && str[1] > 0x8f) return ((void*)0);
         c = (*str++ & 0x07) << 18;
         if ((*str & 0xc0) != 0x80) return ((void*)0);
         c += (*str++ & 0x3f) << 12;
         if ((*str & 0xc0) != 0x80) return ((void*)0);
         c += (*str++ & 0x3f) << 6;
         if ((*str & 0xc0) != 0x80) return ((void*)0);
         c += (*str++ & 0x3f);

         if ((c & 0xFFFFF800) == 0xD800) return ((void*)0);
         if (c >= 0x10000) {
            c -= 0x10000;
            if (i + 2 > n) return ((void*)0);
            buffer[i++] = 0xD800 | (0x3ff & (c >> 10));
            buffer[i++] = 0xDC00 | (0x3ff & (c ));
         }
      } else
         return ((void*)0);
   }
   buffer[i] = 0;
   return buffer;
}
