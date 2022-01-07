
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

void warning_callback(const char *msg, void *client_data)
{
    FILE *stream = (FILE*)client_data;
    fprintf(stream, "[WARNING] %s", msg);
}
