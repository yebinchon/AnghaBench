
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int BUILD_POINTER_BYTES ;
 int appendStringInfo (TYPE_1__*,char*,int) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static char *
get_architecture_bit_size()
{
 StringInfo buf = makeStringInfo();

 appendStringInfo(buf, "%d", BUILD_POINTER_BYTES * 8);
 return buf->data;
}
