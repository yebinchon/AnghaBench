
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int * fz_hb_secret ;

__attribute__((used)) static void set_hb_context(fz_context *ctx)
{
 fz_hb_secret = ctx;
}
