
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* hb_buffer_create () ;

__attribute__((used)) static void *
create_buffer (void)
{
  return hb_buffer_create ();
}
