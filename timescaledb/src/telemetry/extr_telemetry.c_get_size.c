
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int INT64_FORMAT ;
 int appendStringInfo (TYPE_1__*,int ,int ) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static char *
get_size(int64 size)
{
 StringInfo buf = makeStringInfo();

 appendStringInfo(buf, INT64_FORMAT, size);
 return buf->data;
}
