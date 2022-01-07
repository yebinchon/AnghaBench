
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TupleInfo ;
struct TYPE_2__ {int main_table_relid; int num_dimensions; int * dimensions; } ;
typedef int ScanTupleResult ;
typedef TYPE_1__ Hyperspace ;
typedef int Dimension ;


 int SCAN_CONTINUE ;
 int dimension_fill_in_from_tuple (int *,int *,int ) ;

__attribute__((used)) static ScanTupleResult
dimension_tuple_found(TupleInfo *ti, void *data)
{
 Hyperspace *hs = data;
 Dimension *d = &hs->dimensions[hs->num_dimensions++];

 dimension_fill_in_from_tuple(d, ti, hs->main_table_relid);

 return SCAN_CONTINUE;
}
