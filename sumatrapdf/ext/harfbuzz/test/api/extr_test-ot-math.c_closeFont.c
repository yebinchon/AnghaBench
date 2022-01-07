
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FT_Done_Face (int *) ;
 int * ft_face ;
 int * hb_face ;
 int hb_face_destroy (int *) ;
 int * hb_font ;
 int hb_font_destroy (int *) ;

__attribute__((used)) static inline void
closeFont (void)
{
  hb_face_destroy (hb_face);
  hb_font_destroy (hb_font);
  FT_Done_Face (ft_face);
  hb_face = ((void*)0);
  hb_font = ((void*)0);
  ft_face = ((void*)0);
}
