
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_FG ;
 int io_complete (int ,char const**,char const*,int) ;

bool
io_run_fg(const char **argv, const char *dir)
{
 return io_complete(IO_FG, argv, dir, -1);
}
