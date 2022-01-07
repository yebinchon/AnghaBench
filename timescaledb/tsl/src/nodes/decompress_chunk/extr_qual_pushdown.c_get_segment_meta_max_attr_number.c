
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FormData_hypertable_compression ;
typedef int AttrNumber ;


 int ERROR ;
 char* compression_column_segment_max_name (int *) ;
 int elog (int ,char*) ;
 int get_attnum (int ,char*) ;

__attribute__((used)) static AttrNumber
get_segment_meta_max_attr_number(FormData_hypertable_compression *compression_info,
         Oid compressed_relid)
{
 char *meta_col_name = compression_column_segment_max_name(compression_info);

 if (meta_col_name == ((void*)0))
  elog(ERROR, "could not find meta column");

 return get_attnum(compressed_relid, meta_col_name);
}
