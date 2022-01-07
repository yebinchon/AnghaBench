
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ pdf_function ;
typedef int fz_context ;



size_t
pdf_function_size(fz_context *ctx, pdf_function *func)
{
 return (func ? func->size : 0);
}
