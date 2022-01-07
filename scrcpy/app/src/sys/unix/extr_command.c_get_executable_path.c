
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int PATH_MAX ;
 char* SDL_strdup (char*) ;
 int perror (char*) ;
 int readlink (char*,char*,int ) ;

char *
get_executable_path(void) {


    char buf[PATH_MAX + 1];
    ssize_t len = readlink("/proc/self/exe", buf, PATH_MAX);
    if (len == -1) {
        perror("readlink");
        return ((void*)0);
    }
    buf[len] = '\0';
    return SDL_strdup(buf);






}
