
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
typedef enum io_type { ____Placeholder_io_type } io_type ;


 int io_exec (struct io*,int,char const*,char* const*,char const**,int ) ;

bool
io_run(struct io *io, enum io_type type, const char *dir, char * const env[], const char *argv[])
{
 return io_exec(io, type, dir, env, argv, 0);
}
