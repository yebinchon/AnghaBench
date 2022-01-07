
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* hb_font_funcs_create () ;

__attribute__((used)) static void *
create_font_funcs (void)
{
  return hb_font_funcs_create ();
}
