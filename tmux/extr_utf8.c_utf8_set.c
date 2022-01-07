
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int member_0; } ;
struct utf8_data {int member_1; int member_2; int member_3; int * data; TYPE_1__ member_0; } ;


 int memcpy (struct utf8_data*,struct utf8_data const*,int) ;

void
utf8_set(struct utf8_data *ud, u_char ch)
{
 static const struct utf8_data empty = { { 0 }, 1, 1, 1 };

 memcpy(ud, &empty, sizeof *ud);
 *ud->data = ch;
}
