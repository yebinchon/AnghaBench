
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int F_OK ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ mkdir (char*,int ) ;
 char* simplify (char const*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;

int
mkdirp(const char *d, mode_t mode)
{
 char *endptr, *ptr, *slash, *str;

 str = simplify(d);



 if (str == ((void*)0))
  return (-1);



 if (mkdir(str, mode) == 0) {
  free(str);
  return (0);
 }
 if (errno != ENOENT) {
  free(str);
  return (-1);
 }
 endptr = strrchr(str, '\0');
 slash = strrchr(str, '/');



 while (slash != ((void*)0)) {

  ptr = slash;
  *ptr = '\0';



  if (access(str, F_OK) == 0)
   break;



  else {
   slash = strrchr(str, '/');



   if (slash == ((void*)0) || slash == str) {
    if (mkdir(str, mode) != 0 && errno != EEXIST) {
     free(str);
     return (-1);
    }
    break;
   }
  }
 }



 while ((ptr = strchr(str, '\0')) != endptr) {
  *ptr = '/';
  if (mkdir(str, mode) != 0 && errno != EEXIST) {







   free(str);
   return (-1);
  }
 }
 free(str);
 return (0);
}
