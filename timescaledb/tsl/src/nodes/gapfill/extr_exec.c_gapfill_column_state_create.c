
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int typlen; int typbyval; int type_id; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_7__ {int ctype; int typlen; int typbyval; int typid; } ;
typedef int Oid ;
typedef int GapFillLocfColumnState ;
typedef int GapFillInterpolateColumnState ;
typedef int GapFillGroupColumnState ;
typedef int GapFillColumnType ;
typedef TYPE_2__ GapFillColumnState ;






 TYPE_1__* lookup_type_cache (int ,int ) ;
 TYPE_2__* palloc0 (size_t) ;

__attribute__((used)) static GapFillColumnState *
gapfill_column_state_create(GapFillColumnType ctype, Oid typeid)
{
 TypeCacheEntry *tce = lookup_type_cache(typeid, 0);
 GapFillColumnState *column;
 size_t size;

 switch (ctype)
 {
  case 130:
  case 131:
   size = sizeof(GapFillGroupColumnState);
   break;
  case 128:
   size = sizeof(GapFillLocfColumnState);
   break;
  case 129:
   size = sizeof(GapFillInterpolateColumnState);
   break;
  default:
   size = sizeof(GapFillColumnState);
   break;
 }

 column = palloc0(size);
 column->ctype = ctype;
 column->typid = tce->type_id;
 column->typbyval = tce->typbyval;
 column->typlen = tce->typlen;

 return column;
}
