
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_context ;


 int fz_stdout_global ;

fz_output *fz_stdout(fz_context *ctx)
{
 return &fz_stdout_global;
}
