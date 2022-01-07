
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISTRNEQ (char const*,char*,int) ;
 int STRNCPY (char*,char*) ;
 int Strncpy (char*,char const*,size_t) ;
 int isdigit (int) ;
 char* strtok (char*,char*) ;

void
DefaultBookmarkName(char *dst, size_t siz, char *src)
{
 char str[128];
 const char *token;
 const char *cp;

 (void) STRNCPY(str, src);





 token = str;
 if ((token = strtok(str, ".")) == ((void*)0))
  token = str;
 else if ((ISTRNEQ(token, "ftp", 3)) || (ISTRNEQ(token, "www", 3))) {
  if ((token = strtok(((void*)0), ".")) == ((void*)0))
   token = "";
 }
 for (cp = token; ; cp++) {
  if (*cp == '\0') {

   token = "";
  }
  if (!isdigit((int) *cp))
   break;
 }
 (void) Strncpy(dst, token, siz);
}
