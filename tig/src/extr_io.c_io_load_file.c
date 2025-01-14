
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct buffer {char* data; } ;
typedef int (* io_read_fn ) (char*,size_t,char*,size_t,void*) ;
typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int error (char*,int ) ;
 int io_done (struct io*) ;
 scalar_t__ io_error (struct io*) ;
 scalar_t__ io_get_line (struct io*,struct buffer*,char,size_t*,int,char) ;
 int io_strerror (struct io*) ;
 size_t strcspn (char*,char const*) ;
 char* string_trim (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static enum status_code
io_load_file(struct io *io, const char *separators,
      size_t *lineno, io_read_fn read_property, void *data)
{
 struct buffer buf;
 enum status_code state = SUCCESS;

 while (state == SUCCESS && io_get_line(io, &buf, '\n', lineno, 1, '\\')) {
  char *name;
  char *value;
  size_t namelen;
  size_t valuelen;

  name = string_trim(buf.data);
  namelen = strcspn(name, separators);

  if (name[namelen]) {
   name[namelen] = 0;
   value = string_trim(name + namelen + 1);
   valuelen = strlen(value);

  } else {
   value = "";
   valuelen = 0;
  }

  state = read_property(name, namelen, value, valuelen, data);
 }

 if (state == SUCCESS && io_error(io))
  state = error("%s", io_strerror(io));
 io_done(io);

 return state;
}
