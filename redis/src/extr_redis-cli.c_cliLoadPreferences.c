
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sds ;
typedef int buf ;
typedef int FILE ;


 int REDIS_CLI_RCFILE_DEFAULT ;
 int REDIS_CLI_RCFILE_ENV ;
 int cliSetPreferences (int **,int,int ) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int *,char*) ;
 int * getDotfilePath (int ,int ) ;
 int sdsfree (int *) ;
 int sdsfreesplitres (int **,int) ;
 int ** sdssplitargs (char*,int*) ;

void cliLoadPreferences(void) {
    sds rcfile = getDotfilePath(REDIS_CLI_RCFILE_ENV,REDIS_CLI_RCFILE_DEFAULT);
    if (rcfile == ((void*)0)) return;
    FILE *fp = fopen(rcfile,"r");
    char buf[1024];

    if (fp) {
        while(fgets(buf,sizeof(buf),fp) != ((void*)0)) {
            sds *argv;
            int argc;

            argv = sdssplitargs(buf,&argc);
            if (argc > 0) cliSetPreferences(argv,argc,0);
            sdsfreesplitres(argv,argc);
        }
        fclose(fp);
    }
    sdsfree(rcfile);
}
