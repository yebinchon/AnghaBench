
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* compressed_rte; TYPE_1__* ht_rte; } ;
struct TYPE_6__ {int relid; } ;
struct TYPE_5__ {int relid; } ;
typedef TYPE_3__ CompressionInfo ;
typedef scalar_t__ AttrNumber ;


 int ERROR ;
 scalar_t__ InvalidAttrNumber ;
 int elog (int ,char*) ;
 char* get_attname_compat (int ,scalar_t__,int) ;
 scalar_t__ get_attnum (int ,char*) ;

AttrNumber
get_compressed_attno(CompressionInfo *info, AttrNumber ht_attno)
{
 AttrNumber compressed_attno;
 char *chunk_col = get_attname_compat(info->ht_rte->relid, ht_attno, 0);
 compressed_attno = get_attnum(info->compressed_rte->relid, chunk_col);

 if (compressed_attno == InvalidAttrNumber)
  elog(ERROR, "No matching column in compressed chunk found.");

 return compressed_attno;
}
