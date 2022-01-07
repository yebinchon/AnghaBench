
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct utf8_data {int size; } ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 int UTF8_ERROR ;
 int UTF8_MORE ;
 int memset (struct utf8_data*,int ,int) ;
 int utf8_append (struct utf8_data*,int) ;

enum utf8_state
utf8_open(struct utf8_data *ud, u_char ch)
{
 memset(ud, 0, sizeof *ud);
 if (ch >= 0xc2 && ch <= 0xdf)
  ud->size = 2;
 else if (ch >= 0xe0 && ch <= 0xef)
  ud->size = 3;
 else if (ch >= 0xf0 && ch <= 0xf4)
  ud->size = 4;
 else
  return (UTF8_ERROR);
 utf8_append(ud, ch);
 return (UTF8_MORE);
}
