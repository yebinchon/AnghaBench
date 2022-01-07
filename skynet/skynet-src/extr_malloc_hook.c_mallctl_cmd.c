
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int je_mallctl (char const*,int *,int *,int *,int ) ;

int
mallctl_cmd(const char* name) {
 return je_mallctl(name, ((void*)0), ((void*)0), ((void*)0), 0);
}
