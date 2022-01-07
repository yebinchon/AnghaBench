
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_3__ {scalar_t__ bucket_width; int htpartcol_interval_len; void* htpartcoltype; int htpartcolno; void* htoid; int htid; } ;
typedef void* Oid ;
typedef TYPE_1__ CAggTimebucketInfo ;
typedef int AttrNumber ;



__attribute__((used)) static void
caggtimebucketinfo_init(CAggTimebucketInfo *src, int32 hypertable_id, Oid hypertable_oid,
      AttrNumber hypertable_partition_colno, Oid hypertable_partition_coltype,
      int64 hypertable_partition_col_interval)
{
 src->htid = hypertable_id;
 src->htoid = hypertable_oid;
 src->htpartcolno = hypertable_partition_colno;
 src->htpartcoltype = hypertable_partition_coltype;
 src->htpartcol_interval_len = hypertable_partition_col_interval;
 src->bucket_width = 0;
}
