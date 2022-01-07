
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FormData_hypertable_compression ;


 char* compression_column_segment_metadata_name (int const*,char*) ;

char *
compression_column_segment_min_name(const FormData_hypertable_compression *fd)
{
 return compression_column_segment_metadata_name(fd, "min");
}
