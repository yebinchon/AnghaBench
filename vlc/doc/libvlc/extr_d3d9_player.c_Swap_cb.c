
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_context {int dummy; } ;


 int Swap (struct render_context*) ;

__attribute__((used)) static void Swap_cb( void* opaque )
{
    struct render_context *ctx = opaque;
    Swap( ctx );
}
