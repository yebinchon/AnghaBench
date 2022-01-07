
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int ) ;
 int fopen (char*,char*) ;
 int main2 (int,char**) ;
 int out ;
 int stdout ;

int main(int argc, char **argv)
{
    out = stdout;



    int ret = main2(argc, argv);
    fclose(out);
    return ret;
}
