
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int HDR_BUFLEN ;
 char* hdr_gettoken (int *,char*) ;
 int stbi_rewind (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int stbi_hdr_info(stbi *s, int *x, int *y, int *comp)
{
   char buffer[HDR_BUFLEN];
   char *token;
   int valid = 0;

   if (strcmp(hdr_gettoken(s,buffer), "#?RADIANCE") != 0) {
       stbi_rewind( s );
       return 0;
   }

   for(;;) {
      token = hdr_gettoken(s,buffer);
      if (token[0] == 0) break;
      if (strcmp(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
   }

   if (!valid) {
       stbi_rewind( s );
       return 0;
   }
   token = hdr_gettoken(s,buffer);
   if (strncmp(token, "-Y ", 3)) {
       stbi_rewind( s );
       return 0;
   }
   token += 3;
   *y = (int) strtol(token, &token, 10);
   while (*token == ' ') ++token;
   if (strncmp(token, "+X ", 3)) {
       stbi_rewind( s );
       return 0;
   }
   token += 3;
   *x = (int) strtol(token, ((void*)0), 10);
   *comp = 3;
   return 1;
}
