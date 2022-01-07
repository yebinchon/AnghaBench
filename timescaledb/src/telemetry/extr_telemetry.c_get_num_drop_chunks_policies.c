
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;
 int ts_bgw_policy_drop_chunks_count () ;

__attribute__((used)) static char *
get_num_drop_chunks_policies()
{
 StringInfo buf = makeStringInfo();

 appendStringInfo(buf, "%d", ts_bgw_policy_drop_chunks_count());
 return buf->data;
}
