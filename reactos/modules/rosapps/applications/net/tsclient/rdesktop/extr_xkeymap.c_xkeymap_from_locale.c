
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keymapname; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int FILE ;
typedef int BOOL ;


 int False ;
 int STRNCPY (int ,char*,int) ;
 int True ;
 int fclose (int *) ;
 char* strrchr (char*,char) ;
 char tolower (int) ;
 int xfree (char*) ;
 int * xkeymap_open (char*) ;
 char* xstrdup (char const*) ;

BOOL
xkeymap_from_locale(RDPCLIENT * This, const char *locale)
{
 char *str, *ptr;
 FILE *fp;


 str = xstrdup(locale);


 ptr = strrchr(str, '.');
 if (ptr)
  *ptr = '\0';
 ptr = strrchr(str, '@');
 if (ptr)
  *ptr = '\0';


 ptr = strrchr(str, '_');
 if (ptr)
  *ptr = '-';


 ptr = str;
 while (*ptr)
 {
  *ptr = tolower((int) *ptr);
  ptr++;
 }


 fp = xkeymap_open(str);
 if (fp == ((void*)0))
 {

  ptr = strrchr(str, '-');
  if (ptr)
   *ptr = '\0';


  fp = xkeymap_open(str);
 }

 if (fp)
 {
  fclose(fp);
  STRNCPY(This->keymapname, str, sizeof(This->keymapname));
  xfree(str);
  return True;
 }

 xfree(str);
 return False;
}
