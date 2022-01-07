
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int HDR_BUFLEN ;
 int at_eof (int *) ;
 char get8 (int *) ;

__attribute__((used)) static char *hdr_gettoken(stbi *z, char *buffer)
{
   int len=0;
   char c = '\0';

   c = (char) get8(z);

   while (!at_eof(z) && c != '\n') {
      buffer[len++] = c;
      if (len == HDR_BUFLEN-1) {

         while (!at_eof(z) && get8(z) != '\n')
            ;
         break;
      }
      c = (char) get8(z);
   }

   buffer[len] = 0;
   return buffer;
}
