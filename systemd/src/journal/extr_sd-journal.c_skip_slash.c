
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *skip_slash(const char *p) {

        if (!p)
                return ((void*)0);

        while (*p == '/')
                p++;

        return p;
}
