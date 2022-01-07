
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace {int name; struct namespace* parent; } ;
typedef int FILE ;


 scalar_t__ is_global_namespace (struct namespace*) ;
 scalar_t__ use_abi_namespace ;
 int write_line (int *,int,char*,...) ;

__attribute__((used)) static void write_namespace_start(FILE *header, struct namespace *namespace)
{
    if(is_global_namespace(namespace)) {
        if(use_abi_namespace)
            write_line(header, 1, "namespace ABI {");
        return;
    }

    write_namespace_start(header, namespace->parent);
    write_line(header, 1, "namespace %s {", namespace->name);
}
