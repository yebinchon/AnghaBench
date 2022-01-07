
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 scalar_t__ fflush (int *) ;
 int xmlIOErr (int ,char*) ;

__attribute__((used)) static int
xmlFileFlush (void * context) {
    int ret;

    if (context == ((void*)0))
        return(-1);
    ret = ( fflush((FILE *) context) == EOF ) ? -1 : 0;
    if (ret < 0)
        xmlIOErr(0, "fflush()");
    return(ret);
}
