
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace {struct namespace* parent; int name; } ;
typedef int FILE ;


 scalar_t__ is_global_namespace (struct namespace*) ;
 scalar_t__ use_abi_namespace ;
 int write_line (int *,int,char*,int ) ;

__attribute__((used)) static void write_namespace_end(FILE *header, struct namespace *namespace)
{
    if(is_global_namespace(namespace)) {
        if(use_abi_namespace)
            write_line(header, -1, "}", namespace->name);
        return;
    }

    write_line(header, -1, "}", namespace->name);
    write_namespace_end(header, namespace->parent);
}
