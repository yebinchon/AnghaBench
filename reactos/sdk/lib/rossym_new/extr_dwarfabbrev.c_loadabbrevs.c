
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_5__ {scalar_t__ off; int na; int* a; } ;
struct TYPE_6__ {TYPE_1__ acache; } ;
typedef int DwarfAttr ;
typedef int DwarfAbbrev ;
typedef TYPE_2__ Dwarf ;


 int free (int*) ;
 int* malloc (int) ;
 int* nil ;
 scalar_t__ parseabbrevs (TYPE_2__*,scalar_t__,int*,int*,int*,int*) ;

__attribute__((used)) static int
loadabbrevs(Dwarf *d, ulong off, DwarfAbbrev **aa)
{
    int nattr, nabbrev;
    DwarfAbbrev *abbrev;
    DwarfAttr *attr;

    if(d->acache.off == off && d->acache.na){
        *aa = d->acache.a;
        return d->acache.na;
    }


    if(parseabbrevs(d, off, nil, nil, &nabbrev, &nattr) < 0) {
        return -1;
    }

    abbrev = malloc(nabbrev*sizeof(DwarfAbbrev) + nattr*sizeof(DwarfAttr));
    attr = (DwarfAttr*)(abbrev+nabbrev);

    if(parseabbrevs(d, off, abbrev, attr, nil, nil) < 0){
        free(abbrev);
        return -1;
    }

    free(d->acache.a);
    d->acache.a = abbrev;
    d->acache.na = nabbrev;
    d->acache.off = off;

    *aa = abbrev;
    return nabbrev;
}
