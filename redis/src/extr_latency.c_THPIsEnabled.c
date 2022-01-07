
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int * strstr (char*,char*) ;

int THPIsEnabled(void) {
    char buf[1024];

    FILE *fp = fopen("/sys/kernel/mm/transparent_hugepage/enabled","r");
    if (!fp) return 0;
    if (fgets(buf,sizeof(buf),fp) == ((void*)0)) {
        fclose(fp);
        return 0;
    }
    fclose(fp);
    return (strstr(buf,"[never]") == ((void*)0)) ? 1 : 0;
}
