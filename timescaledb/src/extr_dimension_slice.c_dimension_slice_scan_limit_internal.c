
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tuple_found_func ;
typedef int ScanKeyData ;
typedef int MemoryContext ;
typedef int LOCKMODE ;


 int ForwardScanDirection ;
 int dimension_slice_scan_limit_direction_internal (int,int *,int,int ,void*,int,int ,int ,int ) ;

__attribute__((used)) static int
dimension_slice_scan_limit_internal(int indexid, ScanKeyData *scankey, int nkeys,
         tuple_found_func on_tuple_found, void *scandata, int limit,
         LOCKMODE lockmode, MemoryContext mctx)
{
 return dimension_slice_scan_limit_direction_internal(indexid,
               scankey,
               nkeys,
               on_tuple_found,
               scandata,
               limit,
               ForwardScanDirection,
               lockmode,
               mctx);
}
