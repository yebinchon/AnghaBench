
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_module {char const* name; int module; } ;


 void* dlsym (int ,char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void *
get_api(struct skynet_module *mod, const char *api_name) {
 size_t name_size = strlen(mod->name);
 size_t api_size = strlen(api_name);
 char tmp[name_size + api_size + 1];
 memcpy(tmp, mod->name, name_size);
 memcpy(tmp+name_size, api_name, api_size+1);
 char *ptr = strrchr(tmp, '.');
 if (ptr == ((void*)0)) {
  ptr = tmp;
 } else {
  ptr = ptr + 1;
 }
 return dlsym(mod->module, ptr);
}
