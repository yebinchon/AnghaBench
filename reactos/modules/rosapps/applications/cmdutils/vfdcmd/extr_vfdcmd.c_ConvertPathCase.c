
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef scalar_t__ HANDLE ;


 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (char*,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ isalpha (char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 scalar_t__ toupper (char) ;

void ConvertPathCase(char *src, char *dst)
{
 HANDLE hFind;
 WIN32_FIND_DATA find;
 char *p;

 p = dst;

 if (*src == '\"') {
  src++;
 }

 if (*(src + strlen(src) - 1) == '\"') {
  *(src + strlen(src) - 1) = '\0';
 }




 if (isalpha(*src) && *(src + 1) == ':') {



  *(p++) = (char)toupper(*src);
  strcpy(p++, ":\\");

  src += 2;
 }
 else if (*src == '\\' || *src == '/') {



  if ((*(src + 1) == '\\' || *(src + 1) == '/') &&
   *(src + 2) && *(src + 2) != '\\' && *(src + 2) != '/') {



   *(p++) = '\\';
   *(p++) = '\\';
   src += 2;

   while (*src && *src != '\\' && *src != '/') {
    *(p++) = *(src++);
   }
  }

  strcpy(p, "\\");
 }
 else {
  *p = '\0';
 }



 while (*src == '\\' || *src == '/') {
  src++;
 }



 while (*src) {

  char *q = src;



  while (*q && *q != '\\' && *q != '/') {
   q++;
  }

  if ((q - src) == 2 && !strncmp(src, "..", 2)) {

   if (p != dst) {
    *p++ = '\\';
   }

   strcpy(p, "..");
   p += 2;
  }
  else if ((q - src) > 1 || *src != '.') {

   if (p != dst) {
    *(p++) = '\\';
   }

   strncpy(p, src, (q - src));
   *(p + (q - src)) = '\0';

   hFind = FindFirstFile(dst, &find);

   if (hFind == INVALID_HANDLE_VALUE) {
    strcpy(p, src);
    break;
   }

   FindClose(hFind);

   strcpy(p, find.cFileName);
   p += strlen(p);
  }



  while (*q == '\\' || *q == '/') {
   q++;
  }

  src = q;
 }
}
