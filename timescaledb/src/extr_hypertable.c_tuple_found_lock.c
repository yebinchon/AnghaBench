
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lockresult; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int HTSU_Result ;


 int SCAN_DONE ;

__attribute__((used)) static ScanTupleResult
tuple_found_lock(TupleInfo *ti, void *data)
{
 HTSU_Result *result = data;

 *result = ti->lockresult;
 return SCAN_DONE;
}
