
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_7__ {TYPE_1__* p_root; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_5__ {int p_child; } ;


 int ClearCuesByTime (int *,int ) ;
 int INT64_MAX ;

__attribute__((used)) static void Flush( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    ClearCuesByTime( &p_sys->p_root->p_child, INT64_MAX );
}
