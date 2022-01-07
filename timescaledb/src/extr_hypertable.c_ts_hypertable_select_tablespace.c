
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {int num_tablespaces; int * tablespaces; } ;
typedef TYPE_4__ Tablespaces ;
typedef int Tablespace ;
struct TYPE_28__ {int cube; } ;
struct TYPE_21__ {scalar_t__ num_slices; int id; } ;
struct TYPE_27__ {TYPE_2__ fd; } ;
struct TYPE_22__ {int id; } ;
struct TYPE_26__ {TYPE_3__ fd; } ;
struct TYPE_25__ {scalar_t__ num_slices; } ;
struct TYPE_20__ {int id; } ;
struct TYPE_24__ {int space; TYPE_1__ fd; } ;
typedef TYPE_5__ Hypertable ;
typedef TYPE_6__ DimensionVec ;
typedef TYPE_7__ DimensionSlice ;
typedef TYPE_8__ Dimension ;
typedef TYPE_9__ Chunk ;


 int Assert (int) ;
 scalar_t__ IS_OPEN_DIMENSION (TYPE_8__*) ;
 TYPE_8__* hyperspace_get_closed_dimension (int ,int ) ;
 TYPE_8__* hyperspace_get_open_dimension (int ,int ) ;
 TYPE_6__* ts_dimension_get_slices (TYPE_8__*) ;
 int ts_dimension_vec_find_slice_index (TYPE_6__*,int ) ;
 TYPE_7__* ts_hypercube_get_slice_by_dimension_id (int ,int ) ;
 TYPE_4__* ts_tablespace_scan (int ) ;

Tablespace *
ts_hypertable_select_tablespace(Hypertable *ht, Chunk *chunk)
{
 Dimension *dim;
 DimensionVec *vec;
 DimensionSlice *slice;
 Tablespaces *tspcs = ts_tablespace_scan(ht->fd.id);
 int i = 0;

 if (((void*)0) == tspcs || tspcs->num_tablespaces == 0)
  return ((void*)0);

 dim = hyperspace_get_closed_dimension(ht->space, 0);

 if (((void*)0) == dim)
  dim = hyperspace_get_open_dimension(ht->space, 0);

 Assert(((void*)0) != dim && (IS_OPEN_DIMENSION(dim) || dim->fd.num_slices > 0));

 vec = ts_dimension_get_slices(dim);

 Assert(((void*)0) != vec && (IS_OPEN_DIMENSION(dim) || vec->num_slices > 0));

 slice = ts_hypercube_get_slice_by_dimension_id(chunk->cube, dim->fd.id);

 Assert(((void*)0) != slice);





 i = ts_dimension_vec_find_slice_index(vec, slice->fd.id);

 Assert(i >= 0);


 return &tspcs->tablespaces[i % tspcs->num_tablespaces];
}
