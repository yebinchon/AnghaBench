
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* my_error_ptr ;
typedef TYPE_3__* j_common_ptr ;
struct TYPE_8__ {TYPE_1__* err; } ;
struct TYPE_7__ {int setjmp_buffer; } ;
struct TYPE_6__ {int (* output_message ) (TYPE_3__*) ;} ;


 int longjmp (int ,int) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void my_error_exit(j_common_ptr cinfo)
{
 my_error_ptr myerr=(my_error_ptr)cinfo->err;
 (*cinfo->err->output_message)(cinfo);
 longjmp(myerr->setjmp_buffer, 1);
}
