
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ulong ;
struct TYPE_10__ {size_t data; } ;
struct TYPE_14__ {TYPE_1__ info; } ;
struct TYPE_13__ {size_t p; TYPE_3__* d; } ;
struct TYPE_11__ {size_t len; scalar_t__ data; } ;
struct TYPE_12__ {TYPE_2__ str; } ;
typedef TYPE_4__ DwarfBuf ;
typedef TYPE_5__ Dwarf ;




 int assert (int ) ;
 size_t dwarfget4 (TYPE_4__*) ;
 char* dwarfgetstring (TYPE_4__*) ;
 int isprint (char) ;
 char* nil ;
 int werrstr (char*,size_t) ;

__attribute__((used)) static int
getstring(Dwarf *d, DwarfBuf *b, int form, char **s)
{
    static int nbad;
    ulong u, x;

    switch(form){
    default:
        return -1;

    case 129:
        x = b->p - d->info.data;
        *s = dwarfgetstring(b);
        for (u = 0; (*s)[u]; u++) {
            assert(isprint((*s)[u]));
        }
        return 0;

    case 128:
        u = dwarfget4(b);
        if(u >= b->d->str.len){
            if(++nbad == 1)
                werrstr("dwarf: bad string pointer 0x%lux in attribute", u);

            *s = nil;
        }else
            *s = (char*)b->d->str.data + u;
        return 0;

    }
}
