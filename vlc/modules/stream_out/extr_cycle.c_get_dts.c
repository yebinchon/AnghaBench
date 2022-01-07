
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int i_dts; } ;
typedef TYPE_1__ block_t ;



__attribute__((used)) static vlc_tick_t get_dts(const block_t *block)
{
    return block->i_dts;
}
