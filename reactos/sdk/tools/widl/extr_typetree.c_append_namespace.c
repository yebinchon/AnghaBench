
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace {char* name; struct namespace* parent; } ;


 scalar_t__ is_global_namespace (struct namespace*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int use_abi_namespace ;

__attribute__((used)) static char *append_namespace(char *ptr, struct namespace *namespace, const char *separator)
{
    if(is_global_namespace(namespace)) {
        if(!use_abi_namespace)
            return ptr;
        strcpy(ptr, "ABI");
        strcat(ptr, separator);
        return ptr + strlen(ptr);
    }

    ptr = append_namespace(ptr, namespace->parent, separator);
    strcpy(ptr, namespace->name);
    strcat(ptr, separator);
    return ptr + strlen(ptr);
}
