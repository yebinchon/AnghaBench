
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modules {char* path; } ;


 int RTLD_GLOBAL ;
 int RTLD_NOW ;
 char* dlerror () ;
 void* dlopen (char*,int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (char*,int ,int) ;
 int stderr ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void *
_try_open(struct modules *m, const char * name) {
 const char *l;
 const char * path = m->path;
 size_t path_size = strlen(path);
 size_t name_size = strlen(name);

 int sz = path_size + name_size;

 void * dl = ((void*)0);
 char tmp[sz];
 do
 {
  memset(tmp,0,sz);
  while (*path == ';') path++;
  if (*path == '\0') break;
  l = strchr(path, ';');
  if (l == ((void*)0)) l = path + strlen(path);
  int len = l - path;
  int i;
  for (i=0;path[i]!='?' && i < len ;i++) {
   tmp[i] = path[i];
  }
  memcpy(tmp+i,name,name_size);
  if (path[i] == '?') {
   strncpy(tmp+i+name_size,path+i+1,len - i - 1);
  } else {
   fprintf(stderr,"Invalid C service path\n");
   exit(1);
  }
  dl = dlopen(tmp, RTLD_NOW | RTLD_GLOBAL);
  path = l;
 }while(dl == ((void*)0));

 if (dl == ((void*)0)) {
  fprintf(stderr, "try open %s failed : %s\n",name,dlerror());
 }

 return dl;
}
