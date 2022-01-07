
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;


 int O_RDONLY ;
 int STRM_IO_READ ;
 int STRM_NG ;
 int STRM_OK ;
 int open (int ,int ) ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_io_new (int,int ) ;
 int strm_raise (int *,char*) ;
 int strm_str_cstr (int ,char*) ;

__attribute__((used)) static int
exec_fread(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  int fd;
  strm_string path;
  char buf[7];

  strm_get_args(strm, argc, args, "S", &path);
  fd = open(strm_str_cstr(path, buf), O_RDONLY);
  if (fd < 0) {
    strm_raise(strm, "fread() failed");
    return STRM_NG;
  }
  *ret = strm_io_new(fd, STRM_IO_READ);
  return STRM_OK;
}
