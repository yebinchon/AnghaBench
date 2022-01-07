
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct write_data {int f; TYPE_1__* io; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int strm_value ;
typedef int strm_string ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ strm_stream ;
struct TYPE_4__ {int mode; } ;


 int STRM_IO_FLUSH ;
 int STRM_NG ;
 int STRM_OK ;
 int fflush (int ) ;
 int fileno (int ) ;
 int fputs (char*,int ) ;
 int fwrite (scalar_t__,int,int,int ) ;
 int strm_str_len (int ) ;
 scalar_t__ strm_str_ptr (int ) ;
 int strm_to_str (int ) ;
 scalar_t__ writev (int ,struct iovec*,int) ;

__attribute__((used)) static int
write_cb(strm_stream* strm, strm_value data)
{
  struct write_data *d = (struct write_data*)strm->data;
  strm_string p = strm_to_str(data);


  struct iovec buf[2];

  buf[0].iov_base = (void*)strm_str_ptr(p);
  buf[0].iov_len = strm_str_len(p);
  buf[1].iov_base = (void*)"\n";
  buf[1].iov_len = 1;
  if (writev(fileno(d->f), buf, 2) < 0) {
    return STRM_NG;
  }







  return STRM_OK;
}
