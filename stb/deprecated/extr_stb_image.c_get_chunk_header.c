
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi ;
struct TYPE_3__ {void* type; void* length; } ;
typedef TYPE_1__ chunk ;


 void* get32 (int *) ;

__attribute__((used)) static chunk get_chunk_header(stbi *s)
{
   chunk c;
   c.length = get32(s);
   c.type = get32(s);
   return c;
}
