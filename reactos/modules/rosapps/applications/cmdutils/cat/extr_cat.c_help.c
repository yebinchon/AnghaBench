
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stdout ;

void help(void)
{
    fprintf(stdout,
            "\n"
            "ReactOS File Concatenation Tool\n"
            "\n"
            "Usage: cat [options] [file [...]]\n"
            "options - Currently ignored\n");
}
