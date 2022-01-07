
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int appendStringInfo (TYPE_1__*,char*,int ) ;
 TYPE_1__* makeStringInfo () ;
 int ts_number_of_user_hypertables () ;

__attribute__((used)) static char *
get_num_hypertables()
{
 StringInfo buf = makeStringInfo();

 appendStringInfo(buf, "%d", ts_number_of_user_hypertables());
 return buf->data;
}
