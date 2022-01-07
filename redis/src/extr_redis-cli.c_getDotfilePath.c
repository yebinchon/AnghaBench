
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;


 char* getenv (char*) ;
 int * sdscatprintf (int ,char*,char*,char*) ;
 int sdsempty () ;
 int * sdsnew (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static sds getDotfilePath(char *envoverride, char *dotfilename) {
    char *path = ((void*)0);
    sds dotPath = ((void*)0);


    path = getenv(envoverride);
    if (path != ((void*)0) && *path != '\0') {
        if (!strcmp("/dev/null", path)) {
            return ((void*)0);
        }


        dotPath = sdsnew(path);
    } else {
        char *home = getenv("HOME");
        if (home != ((void*)0) && *home != '\0') {

            dotPath = sdscatprintf(sdsempty(), "%s/%s", home, dotfilename);
        }
    }
    return dotPath;
}
