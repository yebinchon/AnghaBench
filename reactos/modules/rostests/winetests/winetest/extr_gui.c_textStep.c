
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,int,int) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 int progressCurr ;
 int progressMax ;
 int stderr ;
 char* vstrmake (int *,int ) ;

__attribute__((used)) static int
textStep (va_list ap)
{
    char *str = vstrmake (((void*)0), ap);

    progressCurr++;
    fputs (str, stderr);
    fprintf (stderr, " (%d of %d)\n", progressCurr, progressMax);
    free (str);
    return 0;
}
