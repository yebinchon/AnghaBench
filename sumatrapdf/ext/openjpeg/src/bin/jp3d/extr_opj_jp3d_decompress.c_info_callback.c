
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stdout ;

void info_callback(const char *msg, void *client_data)
{
    fprintf(stdout, "[INFO] %s", msg);
}
