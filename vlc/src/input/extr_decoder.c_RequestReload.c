
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int reload; } ;


 int RELOAD_DECODER ;
 int RELOAD_NO_REQUEST ;
 int atomic_compare_exchange_strong (int *,int*,int ) ;

__attribute__((used)) static void RequestReload( struct decoder_owner *p_owner )
{

    int expected = RELOAD_NO_REQUEST;
    atomic_compare_exchange_strong( &p_owner->reload, &expected, RELOAD_DECODER );
}
