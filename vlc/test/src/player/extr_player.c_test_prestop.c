
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int dummy; } ;


 int test_end_prestop_buffering (struct ctx*) ;
 int test_end_prestop_capabilities (struct ctx*) ;
 int test_end_prestop_length (struct ctx*) ;
 int test_end_prestop_rate (struct ctx*) ;

__attribute__((used)) static void
test_prestop(struct ctx *ctx)
{
    test_end_prestop_rate(ctx);
    test_end_prestop_length(ctx);
    test_end_prestop_capabilities(ctx);
    test_end_prestop_buffering(ctx);
}
