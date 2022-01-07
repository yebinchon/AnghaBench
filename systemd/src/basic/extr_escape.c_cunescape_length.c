
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnescapeFlags ;


 int cunescape_length_with_prefix (char const*,size_t,int *,int ,char**) ;

int cunescape_length(const char *s, size_t length, UnescapeFlags flags, char **ret) {
        return cunescape_length_with_prefix(s, length, ((void*)0), flags, ret);
}
