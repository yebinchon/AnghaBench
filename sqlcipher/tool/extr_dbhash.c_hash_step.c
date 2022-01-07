
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* count; unsigned char const* buffer; int state; } ;
struct TYPE_4__ {TYPE_1__ cx; } ;


 int SHA1Transform (int ,unsigned char const*) ;
 TYPE_2__ g ;
 int memcpy (unsigned char const*,unsigned char const*,unsigned int) ;

__attribute__((used)) static void hash_step(const unsigned char *data, unsigned int len){
  unsigned int i, j;

  j = g.cx.count[0];
  if( (g.cx.count[0] += len << 3) < j ){
    g.cx.count[1] += (len>>29)+1;
  }
  j = (j >> 3) & 63;
  if( (j + len) > 63 ){
    (void)memcpy(&g.cx.buffer[j], data, (i = 64-j));
    SHA1Transform(g.cx.state, g.cx.buffer);
    for(; i + 63 < len; i += 64){
      SHA1Transform(g.cx.state, &data[i]);
    }
    j = 0;
  }else{
    i = 0;
  }
  (void)memcpy(&g.cx.buffer[j], &data[i], len - i);
}
