
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_4__ {char const* colname; } ;
typedef int Oid ;
typedef int NameData ;
typedef int DimensionInfo ;
typedef TYPE_1__ ChunkSizingInfo ;


 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int INT8OID ;
 int Int64GetDatum (int ) ;
 int InvalidOid ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int namestrcpy (int *,char const*) ;
 TYPE_1__* ts_chunk_sizing_info_get_default_disabled (int ) ;
 int * ts_dimension_info_create_open (int ,int *,int ,int ,int ) ;
 int ts_hypertable_create_from_info (int ,int ,int,int *,int *,int *,int *,TYPE_1__*) ;

__attribute__((used)) static void
cagg_create_hypertable(int32 hypertable_id, Oid mat_tbloid, const char *matpartcolname,
        int64 mat_tbltimecol_interval)
{
 bool created;
 int flags = 0;
 NameData mat_tbltimecol;
 DimensionInfo *time_dim_info;
 ChunkSizingInfo *chunk_sizing_info;
 namestrcpy(&mat_tbltimecol, matpartcolname);
 time_dim_info = ts_dimension_info_create_open(mat_tbloid,
              &mat_tbltimecol,
              Int64GetDatum(mat_tbltimecol_interval),
              INT8OID,
              InvalidOid);

 chunk_sizing_info = ts_chunk_sizing_info_get_default_disabled(mat_tbloid);
 chunk_sizing_info->colname = matpartcolname;
 created = ts_hypertable_create_from_info(mat_tbloid,
            hypertable_id,
            flags,
            time_dim_info,
            ((void*)0),
            ((void*)0),
            ((void*)0),
            chunk_sizing_info);
 if (!created)
 {
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("continuous agg could not create hypertable for relid")));
 }
}
