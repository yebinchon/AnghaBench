
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* hb_unicode_funcs_create (int *) ;

__attribute__((used)) static void *
create_unicode_funcs (void)
{
  return hb_unicode_funcs_create (((void*)0));
}
