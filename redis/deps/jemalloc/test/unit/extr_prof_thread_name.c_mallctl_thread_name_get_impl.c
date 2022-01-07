
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_name_old ;


 int assert_d_eq (int ,int ,char*,char const*,int) ;
 int assert_str_eq (char const*,char const*,char*,char const*,int) ;
 int mallctl (char*,void*,size_t*,int *,int ) ;

__attribute__((used)) static void
mallctl_thread_name_get_impl(const char *thread_name_expected, const char *func,
    int line) {
 const char *thread_name_old;
 size_t sz;

 sz = sizeof(thread_name_old);
 assert_d_eq(mallctl("thread.prof.name", (void *)&thread_name_old, &sz,
     ((void*)0), 0), 0,
     "%s():%d: Unexpected mallctl failure reading thread.prof.name",
     func, line);
 assert_str_eq(thread_name_old, thread_name_expected,
     "%s():%d: Unexpected thread.prof.name value", func, line);
}
