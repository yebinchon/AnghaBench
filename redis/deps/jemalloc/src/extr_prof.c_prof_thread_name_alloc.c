
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int TSDN_NULL ;
 int arena_get (int ,int ,int) ;
 char* iallocztm (int *,size_t,int ,int,int *,int,int ,int) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int sz_size2index (size_t) ;

__attribute__((used)) static char *
prof_thread_name_alloc(tsdn_t *tsdn, const char *thread_name) {
 char *ret;
 size_t size;

 if (thread_name == ((void*)0)) {
  return ((void*)0);
 }

 size = strlen(thread_name) + 1;
 if (size == 1) {
  return "";
 }

 ret = iallocztm(tsdn, size, sz_size2index(size), 0, ((void*)0), 1,
     arena_get(TSDN_NULL, 0, 1), 1);
 if (ret == ((void*)0)) {
  return ((void*)0);
 }
 memcpy(ret, thread_name, size);
 return ret;
}
