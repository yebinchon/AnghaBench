
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {int fd; } ;
typedef int ScanTupleResult ;
typedef int FormData_dimension_slice ;
typedef TYPE_2__ DimensionSlice ;


 int GETSTRUCT (int ) ;
 int SCAN_DONE ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static ScanTupleResult
dimension_slice_fill(TupleInfo *ti, void *data)
{
 DimensionSlice **slice = data;

 memcpy(&(*slice)->fd, GETSTRUCT(ti->tuple), sizeof(FormData_dimension_slice));
 return SCAN_DONE;
}
