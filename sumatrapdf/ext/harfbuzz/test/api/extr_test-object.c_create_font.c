
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hb_font_t ;
typedef int hb_face_t ;


 scalar_t__ create_face () ;
 int hb_face_destroy (int *) ;
 void* hb_font_create (int *) ;

__attribute__((used)) static void *
create_font (void)
{
  hb_face_t *face = (hb_face_t *) create_face ();
  hb_font_t *font = hb_font_create (face);
  hb_face_destroy (face);
  return font;
}
