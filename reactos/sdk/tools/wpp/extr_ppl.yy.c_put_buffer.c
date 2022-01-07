
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write ) (char const*,int) ;} ;


 int add_text_to_macro (char const*,int) ;
 int stub1 (char const*,int) ;
 scalar_t__ top_macro () ;
 TYPE_1__* wpp_callbacks ;

__attribute__((used)) static void put_buffer(const char *s, int len)
{
 if(top_macro())
  add_text_to_macro(s, len);
 else
  wpp_callbacks->write(s, len);
}
