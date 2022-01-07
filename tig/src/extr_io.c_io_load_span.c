
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
typedef int io_read_fn ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int io_load_file (struct io*,char const*,size_t*,int ,void*) ;

enum status_code
io_load_span(struct io *io, const char *separators, size_t *lineno,
      io_read_fn read_property, void *data)
{
 return io_load_file(io, separators, lineno, read_property, data);
}
