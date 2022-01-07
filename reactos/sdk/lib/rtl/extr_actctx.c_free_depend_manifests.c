
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct actctx_loader {unsigned int num_dependencies; int * dependencies; } ;


 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;
 int free_assembly_identity (int *) ;

__attribute__((used)) static void free_depend_manifests(struct actctx_loader* acl)
{
    unsigned int i;
    for (i = 0; i < acl->num_dependencies; i++)
        free_assembly_identity(&acl->dependencies[i]);
    RtlFreeHeap(RtlGetProcessHeap(), 0, acl->dependencies);
}
