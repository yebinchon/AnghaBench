
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;


 scalar_t__ BLCKSZ ;
 int ERROR ;
 int GUC_UNIT_BLOCKS ;
 char* GetConfigOption (char*,int,int) ;
 int elog (int ,char*,...) ;
 scalar_t__ fixed_memory_cache_size ;
 int parse_int (char const*,int*,int ,char const**) ;

__attribute__((used)) static int64
get_memory_cache_size(void)
{
 const char *val;
 const char *hintmsg;
 int shared_buffers;
 int64 memory_bytes;

 if (fixed_memory_cache_size > 0)
  return fixed_memory_cache_size;

 val = GetConfigOption("shared_buffers", 0, 0);

 if (((void*)0) == val)
  elog(ERROR, "missing configuration for 'shared_buffers'");

 if (!parse_int(val, &shared_buffers, GUC_UNIT_BLOCKS, &hintmsg))
  elog(ERROR, "could not parse 'shared_buffers' setting: %s", hintmsg);

 memory_bytes = shared_buffers;


 memory_bytes *= BLCKSZ;

 return memory_bytes;
}
