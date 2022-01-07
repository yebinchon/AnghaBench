
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fread (char*,int,unsigned int,void*) ;

__attribute__((used)) static int wpp_default_read(void *file, char *buffer, unsigned int len){
    return fread(buffer, 1, len, file);
}
