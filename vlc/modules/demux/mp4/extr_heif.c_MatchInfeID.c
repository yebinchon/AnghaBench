
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ i_item_id; } ;
typedef int MP4_Box_t ;


 TYPE_1__* BOXDATA (int const*) ;

__attribute__((used)) static bool MatchInfeID( const MP4_Box_t *p_infe, void *priv )
{
    return BOXDATA(p_infe)->i_item_id == *((uint32_t *) priv);
}
