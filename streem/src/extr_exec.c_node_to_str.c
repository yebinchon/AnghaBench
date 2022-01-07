
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int strm_string ;
typedef TYPE_1__* node_string ;
struct TYPE_3__ {int len; int buf; } ;


 int strm_str_new (int ,int ) ;

__attribute__((used)) static strm_string
node_to_str(node_string s)
{
  return strm_str_new(s->buf, s->len);
}
