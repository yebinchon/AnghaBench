
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* cur; char* temp_buffer; } ;
typedef TYPE_1__ nbt ;


 unsigned char TAG_End ;
 int nbt_get_string_data (unsigned char*,char*,int) ;

__attribute__((used)) static char *nbt_peek(nbt *n)
{
   unsigned char type = *n->cur;
   if (type == TAG_End)
      return ((void*)0);
   nbt_get_string_data(n->cur+1, n->temp_buffer, sizeof(n->temp_buffer));
   return n->temp_buffer;
}
