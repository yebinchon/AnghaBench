
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val_new ;
typedef int old ;


 int assert_b_eq (int,int,char*,char const*,int,char const*) ;
 int assert_d_eq (int ,int ,char*,char const*,int,char const*) ;
 int mallctl (char const*,void*,size_t*,void*,int) ;

__attribute__((used)) static void
mallctl_bool_set(const char *name, bool old_expected, bool val_new,
    const char *func, int line) {
 bool old;
 size_t sz;

 sz = sizeof(old);
 assert_d_eq(mallctl(name, (void *)&old, &sz, (void *)&val_new,
     sizeof(val_new)), 0,
     "%s():%d: Unexpected mallctl failure reading/writing %s", func,
     line, name);
 assert_b_eq(old, old_expected, "%s():%d: Unexpected %s value", func,
     line, name);
}
