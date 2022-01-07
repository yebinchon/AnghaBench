
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int err; } ;
struct TYPE_10__ {int output_message; int error_exit; } ;
struct TYPE_8__ {int setjmp_buffer; TYPE_3__ pub; } ;
struct TYPE_9__ {int init; TYPE_4__ dinfo; TYPE_1__ jerr; } ;
typedef TYPE_2__ tjinstance ;
typedef int * tjhandle ;


 int DECOMPRESS ;
 int free (TYPE_2__*) ;
 int jpeg_create_decompress (TYPE_4__*) ;
 int jpeg_mem_src_tj (TYPE_4__*,unsigned char*,int) ;
 int jpeg_std_error (TYPE_3__*) ;
 int my_error_exit ;
 int my_output_message ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static tjhandle _tjInitDecompress(tjinstance *this)
{
 unsigned char buffer[1];


 this->dinfo.err=jpeg_std_error(&this->jerr.pub);
 this->jerr.pub.error_exit=my_error_exit;
 this->jerr.pub.output_message=my_output_message;

 if(setjmp(this->jerr.setjmp_buffer))
 {

  if(this) free(this); return ((void*)0);
 }

 jpeg_create_decompress(&this->dinfo);

 jpeg_mem_src_tj(&this->dinfo, buffer, 1);

 this->init|=DECOMPRESS;
 return (tjhandle)this;
}
