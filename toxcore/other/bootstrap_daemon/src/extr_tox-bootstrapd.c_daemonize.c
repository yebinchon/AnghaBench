
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ LOG_BACKEND ;
typedef int FILE ;


 scalar_t__ LOG_BACKEND_STDOUT ;
 int LOG_LEVEL_ERROR ;
 int LOG_LEVEL_INFO ;
 int LOG_LEVEL_WARNING ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ chdir (char*) ;
 int close (int ) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fork () ;
 int fprintf (int *,char*,int const) ;
 scalar_t__ setsid () ;
 int write_log (int ,char*,...) ;

void daemonize(LOG_BACKEND log_backend, char *pid_file_path)
{

    FILE *pid_file;

    if ((pid_file = fopen(pid_file_path, "r"))) {
        write_log(LOG_LEVEL_WARNING, "Another instance of the daemon is already running, PID file %s exists.\n", pid_file_path);
        fclose(pid_file);
    }


    pid_file = fopen(pid_file_path, "a+");

    if (pid_file == ((void*)0)) {
        write_log(LOG_LEVEL_ERROR, "Couldn't open the PID file for writing: %s. Exiting.\n", pid_file_path);
        exit(1);
    }


    const pid_t pid = fork();

    if (pid > 0) {
        fprintf(pid_file, "%d", pid);
        fclose(pid_file);
        write_log(LOG_LEVEL_INFO, "Forked successfully: PID: %d.\n", pid);
        exit(0);
    } else {
        fclose(pid_file);
    }

    if (pid < 0) {
        write_log(LOG_LEVEL_ERROR, "Forking failed. Exiting.\n");
        exit(1);
    }


    if (setsid() < 0) {
        write_log(LOG_LEVEL_ERROR, "SID creation failure. Exiting.\n");
        exit(1);
    }



    if ((chdir("/")) < 0) {
        write_log(LOG_LEVEL_ERROR, "Couldn't change working directory to '/'. Exiting.\n");
        exit(1);
    }


    if (log_backend != LOG_BACKEND_STDOUT) {
        close(STDOUT_FILENO);
        close(STDIN_FILENO);
        close(STDERR_FILENO);
    }
}
