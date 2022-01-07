
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_2__ {int * pat; } ;


 size_t last_idx ;
 TYPE_1__* spats ;

char_u *
last_search_pat()
{
    return spats[last_idx].pat;
}
