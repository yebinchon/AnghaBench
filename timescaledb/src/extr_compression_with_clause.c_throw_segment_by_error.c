
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;

__attribute__((used)) static inline void
throw_segment_by_error(char *segment_by)
{
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("unable to parse the compress_segmentby option '%s'", segment_by),
    errhint("The compress_segmentby option should be a comma separated list of column "
      "names.")));
}
