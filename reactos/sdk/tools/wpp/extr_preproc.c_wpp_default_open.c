
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* fopen (char const*,char*) ;

__attribute__((used)) static void *wpp_default_open(const char *filename, int type) {
    return fopen(filename,"rt");
}
