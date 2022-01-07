
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AnalyzeFile () ;
 int MAXLINE ;
 int OpenFlag ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int * manfile ;
 int manpath ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;

int
OpenF(char* name)
{
    int retval=0;
    char *manpath_local=(char*)malloc(sizeof(char)*MAXLINE);

    strcpy(manpath_local, manpath);

    if((manfile=fopen((strcat(manpath_local,name)),"r"))!=((void*)0))
     {
      OpenFlag=1;
      AnalyzeFile();
     }
    else
     retval=-1;

    free(manpath_local);
    return retval;
}
