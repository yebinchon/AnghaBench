
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_9__* data; } ;
struct TYPE_13__ {TYPE_9__* data; } ;
struct TYPE_12__ {TYPE_9__* data; } ;
struct TYPE_19__ {TYPE_9__* data; } ;
struct TYPE_18__ {TYPE_9__* data; } ;
struct TYPE_17__ {TYPE_9__* data; } ;
struct TYPE_16__ {TYPE_9__* data; } ;
struct TYPE_15__ {TYPE_9__* data; } ;
struct TYPE_20__ {int pe; TYPE_3__ info; TYPE_2__ str; TYPE_1__ ranges; TYPE_8__ pubnames; TYPE_7__ line; TYPE_6__ frame; TYPE_5__ aranges; TYPE_4__ abbrev; } ;
typedef TYPE_9__ Dwarf ;


 int free (TYPE_9__*) ;
 int pefree (int ) ;

void
dwarfclose(Dwarf *d)
{
 free(d->abbrev.data);
 free(d->aranges.data);
 free(d->frame.data);
 free(d->line.data);
 free(d->pubnames.data);
 free(d->ranges.data);
 free(d->str.data);
 free(d->info.data);
 pefree(d->pe);
 free(d);
}
