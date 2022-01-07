
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unauthorized ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int LINUX ;


 scalar_t__ memcmp (char*,char const*,int) ;
 size_t safe_strlen (char*) ;
 scalar_t__ strtoul (char*,char**,int) ;

uint16_t GetSyslinuxVersion(char* buf, size_t buf_size, char** ext)
{
 size_t i, j, k;
 char *p;
 uint16_t version;
 const char LINUX[] = { 'L', 'I', 'N', 'U', 'X', ' ' };
 static char* nullstr = "";
 char unauthorized[] = {'<', '>', ':', '|', '*', '?', '\\', '/'};

 *ext = nullstr;
 if (buf_size < 256)
  return 0;


 for (i=64; i<buf_size-64; i++) {
  if (memcmp(&buf[i], LINUX, sizeof(LINUX)) == 0) {

   if (!( ((buf[i-3] == 'I') && (buf[i-2] == 'S') && (buf[i-1] == 'O'))
       || ((buf[i-3] == 'S') && (buf[i-2] == 'Y') && (buf[i-1] == 'S')) ))
     continue;
   i += sizeof(LINUX);
   version = (((uint8_t)strtoul(&buf[i], &p, 10))<<8) + (uint8_t)strtoul(&p[1], &p, 10);
   if (version == 0)
    continue;
   p[safe_strlen(p)] = 0;

   *p = '/';

   for (j=0; (buf[i+j] == p[1+j]) && (buf[i+j] != ' '); j++);
   if (p[j+1] == '-')
    j++;
   if (j >= 4) {
    p[j] = '/';
    p = &p[j];
   }
   for (j=safe_strlen(p)-1; j>0; j--) {

    if ((p[j] == ' ') || (p[j] == '*'))
     p[j] = 0;
    else
     break;
   }

   for (j=1; j<safe_strlen(p); j++) {

    for (k=0; k<sizeof(unauthorized); k++) {
     if (p[j] == unauthorized[k])
      p[j] = '_';
    }
   }

   *ext = (p[1] == 0)?nullstr:p;
   return version;
  }
 }
 return 0;
}
