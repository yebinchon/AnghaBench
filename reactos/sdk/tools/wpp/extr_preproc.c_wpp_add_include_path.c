
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INCLUDESEPARATOR ;
 int free (char*) ;
 char** includepath ;
 int nincludepath ;
 char** pp_xrealloc (char**,int) ;
 char* pp_xstrdup (char const*) ;
 int strlen (char*) ;
 char* strtok (char*,int ) ;

int wpp_add_include_path(const char *path)
{
 char *tok;
 char *cpy = pp_xstrdup(path);
 if(!cpy)
  return 1;

 tok = strtok(cpy, INCLUDESEPARATOR);
 while(tok)
 {
  if(*tok) {
   char *dir;
   char *cptr;
   char **new_path;

   dir = pp_xstrdup(tok);
   if(!dir)
   {
    free(cpy);
    return 1;
   }
   for(cptr = dir; *cptr; cptr++)
   {

    if(*cptr == '\\')
     *cptr = '/';
   }

   if(*(cptr = dir + strlen(dir)-1) == '/')
    *cptr = '\0';


   new_path = pp_xrealloc(includepath, (nincludepath+1) * sizeof(*includepath));
   if(!new_path)
   {
    free(dir);
    free(cpy);
    return 1;
   }
   includepath = new_path;
   includepath[nincludepath] = dir;
   nincludepath++;
  }
  tok = strtok(((void*)0), INCLUDESEPARATOR);
 }
 free(cpy);
 return 0;
}
