
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace {char* name; struct namespace* parent; } ;


 char* append_namespace (char*,struct namespace*,char const*) ;
 int is_global_namespace (struct namespace*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ use_abi_namespace ;
 char* xmalloc (unsigned int) ;

char *format_namespace(struct namespace *namespace, const char *prefix, const char *separator, const char *suffix)
{
    unsigned len = strlen(prefix) + strlen(suffix);
    unsigned sep_len = strlen(separator);
    struct namespace *iter;
    char *ret, *ptr;

    if(use_abi_namespace && !is_global_namespace(namespace))
        len += 3 + sep_len;

    for(iter = namespace; !is_global_namespace(iter); iter = iter->parent)
        len += strlen(iter->name) + sep_len;

    ret = xmalloc(len+1);
    strcpy(ret, prefix);
    ptr = append_namespace(ret + strlen(ret), namespace, separator);
    strcpy(ptr, suffix);

    return ret;
}
