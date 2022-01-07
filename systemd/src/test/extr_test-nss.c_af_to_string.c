
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNSPEC ;
 char* af_to_name (int) ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char* af_to_string(int family, char *buf, size_t buf_len) {
        const char *name;

        if (family == AF_UNSPEC)
                return "*";

        name = af_to_name(family);
        if (name)
                return name;

        snprintf(buf, buf_len, "%i", family);
        return buf;
}
