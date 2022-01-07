
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unauthorized ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 char* safe_strdup (char*) ;
 size_t safe_strlen (char*) ;
 int uprintf (char*) ;

__attribute__((used)) static __inline char* sanitize_filename(char* filename, BOOL* is_identical)
{
 size_t i, j;
 char* ret = ((void*)0);
 char unauthorized[] = { '*', '?', '<', '>', ':', '|' };

 *is_identical = TRUE;
 ret = safe_strdup(filename);
 if (ret == ((void*)0)) {
  uprintf("Could not allocate string for sanitized path");
  return ((void*)0);
 }


 for (i=2; i<safe_strlen(ret); i++) {
  for (j=0; j<sizeof(unauthorized); j++) {
   if (ret[i] == unauthorized[j]) {
    ret[i] = '_';
    *is_identical = FALSE;
   }
  }
 }
 return ret;
}
