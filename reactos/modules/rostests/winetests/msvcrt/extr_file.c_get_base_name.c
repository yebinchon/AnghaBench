
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static const char* get_base_name(const char *path)
{
    const char *ret = path+strlen(path)-1;

    while(ret >= path) {
        if(*ret=='\\' || *ret=='/')
            break;
        ret--;
    }
    return ret+1;
}
