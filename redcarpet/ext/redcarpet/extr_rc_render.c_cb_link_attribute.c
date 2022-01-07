
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;
typedef scalar_t__ VALUE ;


 int StringValueCStr (scalar_t__) ;
 int bufprintf (struct buf*,char*,int ,int ) ;
 scalar_t__ rb_obj_as_string (scalar_t__) ;

__attribute__((used)) static int
cb_link_attribute(VALUE key, VALUE val, VALUE payload)
{
 struct buf *ob = (struct buf *)payload;
 key = rb_obj_as_string(key);
 val = rb_obj_as_string(val);
 bufprintf(ob, " %s=\"%s\"", StringValueCStr(key), StringValueCStr(val));
 return 0;
}
