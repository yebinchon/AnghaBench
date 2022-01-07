
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int do_compress; int do_compress_images; int do_compress_fonts; } ;


 TYPE_1__ pdf_default_write_options ;
 TYPE_1__ save_opts ;

__attribute__((used)) static void init_save_pdf_options(void)
{
 save_opts = pdf_default_write_options;
 save_opts.do_compress = 1;
 save_opts.do_compress_images = 1;
 save_opts.do_compress_fonts = 1;
}
