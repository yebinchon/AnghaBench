
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
typedef int io_read_fn ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int IO_RD ;
 int error (char*) ;
 int io_load (struct io*,char const*,int ,void*) ;
 int io_run (struct io*,int ,int *,int *,char const**) ;

enum status_code
io_run_load(const char **argv, const char *separators,
     io_read_fn read_property, void *data)
{
 struct io io;

 if (!io_run(&io, IO_RD, ((void*)0), ((void*)0), argv))
  return error("Failed to open IO");
 return io_load(&io, separators, read_property, data);
}
