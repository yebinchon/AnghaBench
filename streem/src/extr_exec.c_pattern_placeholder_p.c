
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* node_string ;
struct TYPE_3__ {int len; char* buf; } ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static int
pattern_placeholder_p(node_string name){
  if (name->len == 1 && name->buf[0] == '_')
    return TRUE;
  return FALSE;
}
