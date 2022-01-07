
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_5__ {scalar_t__ num; } ;
typedef TYPE_1__ DwarfAbbrev ;


 TYPE_1__* nil ;
 int werrstr (char*,int) ;

__attribute__((used)) static DwarfAbbrev*
findabbrev(DwarfAbbrev *a, int na, ulong num)
{
    int i;

    for(i=0; i<na; i++) {
        if(a[i].num == num) {
            return &a[i];
        }
    }
    werrstr("abbrev not found (%x)", na);
    return nil;
}
