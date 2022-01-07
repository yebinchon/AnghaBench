
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int stdout ;

void Dot(void)
{
    fprintf(stdout, "."); fflush(stdout);
}
