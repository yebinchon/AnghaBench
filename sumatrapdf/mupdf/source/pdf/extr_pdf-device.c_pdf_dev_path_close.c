
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_string (int *,int *,char*) ;

__attribute__((used)) static void
pdf_dev_path_close(fz_context *ctx, void *arg)
{
 fz_buffer *buf = (fz_buffer *)arg;
 fz_append_string(ctx, buf, "h\n");
}
