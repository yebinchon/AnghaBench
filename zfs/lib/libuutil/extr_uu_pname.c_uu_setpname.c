
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getexecname () ;
 char const* pname ;
 char* strrchr (char*,char) ;

const char *
uu_setpname(char *arg0)
{





 if (arg0 == ((void*)0)) {
  pname = getexecname();
  if (pname == ((void*)0))
   pname = "unknown_command";
  return (pname);
 }




 for (;;) {
  char *p = strrchr(arg0, '/');
  if (p == ((void*)0)) {
   pname = arg0;
   break;
  } else {
   if (*(p + 1) == '\0') {
    *p = '\0';
    continue;
   }

   pname = p + 1;
   break;
  }
 }

 return (pname);
}
