
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_face_get_empty () ;
 void* hb_font_create (int ) ;

__attribute__((used)) static void *
create_font_from_inert (void)
{
  return hb_font_create (hb_face_get_empty ());
}
