
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace {int name; } ;



__attribute__((used)) static inline int is_global_namespace(const struct namespace *namespace)
{
    return !namespace->name;
}
