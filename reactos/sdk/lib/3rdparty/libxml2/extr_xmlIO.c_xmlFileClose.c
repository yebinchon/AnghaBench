
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 scalar_t__ fclose (int *) ;
 int fflush (int *) ;
 int * stderr ;
 int * stdin ;
 int * stdout ;
 int xmlIOErr (int ,char*) ;

int
xmlFileClose (void * context) {
    FILE *fil;
    int ret;

    if (context == ((void*)0))
        return(-1);
    fil = (FILE *) context;
    if ((fil == stdout) || (fil == stderr)) {
        ret = fflush(fil);
 if (ret < 0)
     xmlIOErr(0, "fflush()");
 return(0);
    }
    if (fil == stdin)
 return(0);
    ret = ( fclose((FILE *) context) == EOF ) ? -1 : 0;
    if (ret < 0)
        xmlIOErr(0, "fclose()");
    return(ret);
}
