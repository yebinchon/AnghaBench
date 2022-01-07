
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;


 int BLCKSZ ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int GUC_UNIT_BLOCKS ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,char const*) ;
 int errmsg (char*) ;
 int parse_int (char const*,int*,int ,char const**) ;

__attribute__((used)) static int64
convert_text_memory_amount_to_bytes(const char *memory_amount)
{
 const char *hintmsg;
 int nblocks;
 int64 bytes;

 if (((void*)0) == memory_amount)
  elog(ERROR, "invalid memory amount");

 if (!parse_int(memory_amount, &nblocks, GUC_UNIT_BLOCKS, &hintmsg))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid data amount"),
     errhint("%s", hintmsg)));

 bytes = nblocks;
 bytes *= BLCKSZ;

 return bytes;
}
