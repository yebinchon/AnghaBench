
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pidfile; } ;
typedef int FILE ;


 int CONFIG_DEFAULT_PID_FILE ;
 int fclose (int *) ;
 int * fopen (scalar_t__,char*) ;
 int fprintf (int *,char*,int) ;
 scalar_t__ getpid () ;
 TYPE_1__ server ;
 scalar_t__ zstrdup (int ) ;

void createPidFile(void) {


    if (!server.pidfile) server.pidfile = zstrdup(CONFIG_DEFAULT_PID_FILE);


    FILE *fp = fopen(server.pidfile,"w");
    if (fp) {
        fprintf(fp,"%d\n",(int)getpid());
        fclose(fp);
    }
}
