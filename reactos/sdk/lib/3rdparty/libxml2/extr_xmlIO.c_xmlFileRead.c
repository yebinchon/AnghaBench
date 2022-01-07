
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (char*,int,int,int *) ;
 int xmlIOErr (int ,char*) ;

int
xmlFileRead (void * context, char * buffer, int len) {
    int ret;
    if ((context == ((void*)0)) || (buffer == ((void*)0)))
        return(-1);
    ret = fread(&buffer[0], 1, len, (FILE *) context);
    if (ret < 0) xmlIOErr(0, "fread()");
    return(ret);
}
