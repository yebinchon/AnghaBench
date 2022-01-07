
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ linenr_T ;
struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_6__ {TYPE_1__ b_ml; } ;
typedef TYPE_2__ buf_T ;
typedef int VALUE ;


 int FALSE ;
 scalar_t__ ml_get_buf (TYPE_2__*,scalar_t__,int ) ;
 int rb_eIndexError ;
 int rb_raise (int ,char*,long) ;
 int vim_str2rb_enc_str (char*) ;

__attribute__((used)) static VALUE get_buffer_line(buf_T *buf, linenr_T n)
{
    if (n <= 0 || n > buf->b_ml.ml_line_count)
 rb_raise(rb_eIndexError, "line number %ld out of range", (long)n);
    return vim_str2rb_enc_str((char *)ml_get_buf(buf, n, FALSE));
}
