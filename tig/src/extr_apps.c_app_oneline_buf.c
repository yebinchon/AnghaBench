
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct app_external {int argv; int env; } ;


 int IO_RD ;
 scalar_t__ io_read_buf (struct io*,char*,size_t,int) ;
 scalar_t__ io_run (struct io*,int ,char const*,int ,int ) ;

__attribute__((used)) static bool
app_oneline_buf(char *buf, size_t bufsize, struct app_external *app, const char *dir)
{
 struct io io;
 return io_run(&io, IO_RD, dir, app->env, app->argv) && io_read_buf(&io, buf, bufsize, 0);

}
