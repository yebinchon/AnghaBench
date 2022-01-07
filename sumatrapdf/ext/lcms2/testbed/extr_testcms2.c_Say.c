
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stdout ;

void Say(const char* str)
{
    fprintf(stdout, "%s", str); fflush(stdout);
}
