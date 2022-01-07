
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int codepage; } ;
union cptable {TYPE_1__ info; } ;



__attribute__((used)) static int cmp_codepage( const void *codepage, const void *entry )
{
    return *(const unsigned int *)codepage - (*(const union cptable *const *)entry)->info.codepage;
}
