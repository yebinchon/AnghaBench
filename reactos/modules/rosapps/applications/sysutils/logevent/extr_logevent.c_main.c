
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ParseCmdline (int,char**) ;
 int WriteEvent () ;

int main(int argc, char **argv)
{
    if (ParseCmdline(argc, argv))
        WriteEvent ();

    return 0;
}
