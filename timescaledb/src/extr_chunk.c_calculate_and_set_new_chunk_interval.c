
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_12__ {scalar_t__ interval_length; int id; } ;
struct TYPE_16__ {TYPE_2__ fd; } ;
struct TYPE_15__ {int num_dimensions; TYPE_6__* dimensions; } ;
struct TYPE_11__ {scalar_t__ chunk_target_size; } ;
struct TYPE_14__ {TYPE_1__ fd; int chunk_sizing_func; int main_table_relid; TYPE_5__* space; } ;
struct TYPE_13__ {scalar_t__* coordinates; } ;
typedef TYPE_3__ Point ;
typedef TYPE_4__ Hypertable ;
typedef TYPE_5__ Hyperspace ;
typedef TYPE_6__ Dimension ;
typedef int Datum ;


 scalar_t__ DatumGetInt64 (int ) ;
 scalar_t__ IS_OPEN_DIMENSION (TYPE_6__*) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (scalar_t__) ;
 int OidFunctionCall3 (int ,int ,int ,int ) ;
 int OidIsValid (int ) ;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int get_rel_name (int ) ;
 int ts_dimension_set_chunk_interval (TYPE_6__*,scalar_t__) ;

__attribute__((used)) static bool
calculate_and_set_new_chunk_interval(Hypertable *ht, Point *p)
{
 Hyperspace *hs = ht->space;
 Dimension *dim = ((void*)0);
 Datum datum;
 int64 chunk_interval, coord;
 int i;

 if (!OidIsValid(ht->chunk_sizing_func) || ht->fd.chunk_target_size <= 0)
  return 0;


 for (i = 0; i < hs->num_dimensions; i++)
 {
  dim = &hs->dimensions[i];

  if (IS_OPEN_DIMENSION(dim))
   break;

  dim = ((void*)0);
 }


 if (((void*)0) == dim)
 {
  elog(WARNING,
    "adaptive chunking enabled on hypertable \"%s\" without an open (time) dimension",
    get_rel_name(ht->main_table_relid));

  return 0;
 }

 coord = p->coordinates[i];
 datum = OidFunctionCall3(ht->chunk_sizing_func,
        Int32GetDatum(dim->fd.id),
        Int64GetDatum(coord),
        Int64GetDatum(ht->fd.chunk_target_size));
 chunk_interval = DatumGetInt64(datum);


 if (chunk_interval <= 0 || chunk_interval == dim->fd.interval_length)
  return 0;


 ts_dimension_set_chunk_interval(dim, chunk_interval);

 return 1;
}
