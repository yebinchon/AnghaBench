
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct buffer {scalar_t__ data; int member_0; } ;


 scalar_t__ io_done (struct io*) ;
 scalar_t__ io_get (struct io*,struct buffer*,char,int) ;
 int string_ncopy_do (char*,size_t,scalar_t__,int ) ;
 scalar_t__ string_trim (scalar_t__) ;
 int strlen (scalar_t__) ;

bool
io_read_buf(struct io *io, char buf[], size_t bufsize, bool allow_empty)
{
 struct buffer result = {0};

 if (io_get(io, &result, '\n', 1)) {
  result.data = string_trim(result.data);
  string_ncopy_do(buf, bufsize, result.data, strlen(result.data));
 }

 return io_done(io) && (result.data || allow_empty);
}
