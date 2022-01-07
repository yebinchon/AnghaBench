
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_texture {int dummy; } ;
struct wlr_box {int x; int y; int width; int height; } ;
struct sway_output {double lx; double ly; TYPE_1__* wlr_output; } ;
struct sway_container {int title_baseline; int alpha; } ;
struct border_colors {int background; int border; } ;
typedef int pixman_region32_t ;
typedef enum alignment { ____Placeholder_alignment } alignment ;
struct TYPE_4__ {int titlebar_border_thickness; int titlebar_h_padding; int titlebar_v_padding; int title_align; int font_height; int font_baseline; scalar_t__ show_marks; } ;
struct TYPE_3__ {float scale; int transform_matrix; } ;


 int ALIGN_CENTER ;
 int ALIGN_LEFT ;
 int ALIGN_RIGHT ;
 int WL_OUTPUT_TRANSFORM_NORMAL ;
 int ceil (int) ;
 TYPE_2__* config ;
 int container_titlebar_height () ;
 int floor (int) ;
 int memcpy (float**,int ,int) ;
 int premultiply_alpha (float*,int ) ;
 int render_rect (struct sway_output*,int *,struct wlr_box*,float*) ;
 int render_texture (TYPE_1__*,int *,struct wlr_texture*,struct wlr_box*,float*,int ) ;
 int round (double) ;
 int scale_box (struct wlr_box*,float) ;
 int scale_length (int,int,float) ;
 int wlr_matrix_project_box (float*,struct wlr_box*,int ,double,int ) ;
 int wlr_texture_get_size (struct wlr_texture*,int*,int*) ;

__attribute__((used)) static void render_titlebar(struct sway_output *output,
  pixman_region32_t *output_damage, struct sway_container *con,
  int x, int y, int width,
  struct border_colors *colors, struct wlr_texture *title_texture,
  struct wlr_texture *marks_texture) {
 struct wlr_box box;
 float color[4];
 float output_scale = output->wlr_output->scale;
 double output_x = output->lx;
 double output_y = output->ly;
 int titlebar_border_thickness = config->titlebar_border_thickness;
 int titlebar_h_padding = config->titlebar_h_padding;
 int titlebar_v_padding = config->titlebar_v_padding;
 enum alignment title_align = config->title_align;


 memcpy(&color, colors->border, sizeof(float) * 4);
 premultiply_alpha(color, con->alpha);
 box.x = x;
 box.y = y;
 box.width = width;
 box.height = titlebar_border_thickness;
 scale_box(&box, output_scale);
 render_rect(output, output_damage, &box, color);


 box.x = x;
 box.y = y + container_titlebar_height() - titlebar_border_thickness;
 box.width = width;
 box.height = titlebar_border_thickness;
 scale_box(&box, output_scale);
 render_rect(output, output_damage, &box, color);


 box.x = x;
 box.y = y + titlebar_border_thickness;
 box.width = titlebar_border_thickness;
 box.height = container_titlebar_height() - titlebar_border_thickness * 2;
 scale_box(&box, output_scale);
 render_rect(output, output_damage, &box, color);


 box.x = x + width - titlebar_border_thickness;
 box.y = y + titlebar_border_thickness;
 box.width = titlebar_border_thickness;
 box.height = container_titlebar_height() - titlebar_border_thickness * 2;
 scale_box(&box, output_scale);
 render_rect(output, output_damage, &box, color);

 int inner_x = x - output_x + titlebar_h_padding;
 int bg_y = y + titlebar_border_thickness;
 size_t inner_width = width - titlebar_h_padding * 2;


 int ob_inner_x = round(inner_x * output_scale);
 int ob_inner_width = scale_length(inner_width, inner_x, output_scale);
 int ob_bg_height = scale_length(
   (titlebar_v_padding - titlebar_border_thickness) * 2 +
   config->font_height, bg_y, output_scale);


 int ob_marks_x = 0;
 int ob_marks_width = 0;
 if (config->show_marks && marks_texture) {
  struct wlr_box texture_box;
  wlr_texture_get_size(marks_texture,
   &texture_box.width, &texture_box.height);
  ob_marks_width = texture_box.width;



  int ob_padding_total = ob_bg_height - texture_box.height;
  int ob_padding_above = floor(ob_padding_total / 2.0);
  int ob_padding_below = ceil(ob_padding_total / 2.0);



  if (title_align == ALIGN_RIGHT || texture_box.width > ob_inner_width) {
   texture_box.x = ob_inner_x;
  } else {
   texture_box.x = ob_inner_x + ob_inner_width - texture_box.width;
  }
  ob_marks_x = texture_box.x;

  texture_box.y = round((bg_y - output_y) * output_scale) +
   ob_padding_above;

  float matrix[9];
  wlr_matrix_project_box(matrix, &texture_box,
   WL_OUTPUT_TRANSFORM_NORMAL,
   0.0, output->wlr_output->transform_matrix);

  if (ob_inner_width < texture_box.width) {
   texture_box.width = ob_inner_width;
  }
  render_texture(output->wlr_output, output_damage, marks_texture,
   &texture_box, matrix, con->alpha);


  memcpy(&color, colors->background, sizeof(float) * 4);
  premultiply_alpha(color, con->alpha);
  box.x = texture_box.x + round(output_x * output_scale);
  box.y = round((y + titlebar_border_thickness) * output_scale);
  box.width = texture_box.width;
  box.height = ob_padding_above;
  render_rect(output, output_damage, &box, color);


  box.y += ob_padding_above + texture_box.height;
  box.height = ob_padding_below;
  render_rect(output, output_damage, &box, color);
 }


 int ob_title_x = 0;
 int ob_title_width = 0;
 if (title_texture) {
  struct wlr_box texture_box;
  wlr_texture_get_size(title_texture,
   &texture_box.width, &texture_box.height);
  ob_title_width = texture_box.width;



  int ob_padding_above = round((config->font_baseline -
     con->title_baseline + titlebar_v_padding -
     titlebar_border_thickness) * output_scale);
  int ob_padding_below = ob_bg_height - ob_padding_above -
   texture_box.height;


  if (texture_box.width > ob_inner_width - ob_marks_width) {
   texture_box.x = (title_align == ALIGN_RIGHT && ob_marks_width)
    ? ob_marks_x + ob_marks_width : ob_inner_x;
  } else if (title_align == ALIGN_LEFT) {
   texture_box.x = ob_inner_x;
  } else if (title_align == ALIGN_CENTER) {


   if (ob_marks_width) {
    texture_box.x = (ob_inner_x + ob_marks_x) / 2
     - texture_box.width / 2;
   } else {
    texture_box.x = ob_inner_x + ob_inner_width / 2
     - texture_box.width / 2;
   }
  } else {
   texture_box.x = ob_inner_x + ob_inner_width - texture_box.width;
  }
  ob_title_x = texture_box.x;

  texture_box.y =
   round((bg_y - output_y) * output_scale) + ob_padding_above;

  float matrix[9];
  wlr_matrix_project_box(matrix, &texture_box,
   WL_OUTPUT_TRANSFORM_NORMAL,
   0.0, output->wlr_output->transform_matrix);

  if (ob_inner_width - ob_marks_width < texture_box.width) {
   texture_box.width = ob_inner_width - ob_marks_width;
  }

  render_texture(output->wlr_output, output_damage, title_texture,
   &texture_box, matrix, con->alpha);


  memcpy(&color, colors->background, sizeof(float) * 4);
  premultiply_alpha(color, con->alpha);
  box.x = texture_box.x + round(output_x * output_scale);
  box.y = round((y + titlebar_border_thickness) * output_scale);
  box.width = texture_box.width;
  box.height = ob_padding_above;
  render_rect(output, output_damage, &box, color);


  box.y += ob_padding_above + texture_box.height;
  box.height = ob_padding_below;
  render_rect(output, output_damage, &box, color);
 }


 int ob_left_x, ob_left_width, ob_right_x, ob_right_width;
 if (ob_title_width == 0 && ob_marks_width == 0) {
  ob_left_x = ob_inner_x;
  ob_left_width = 0;
  ob_right_x = ob_inner_x;
  ob_right_width = 0;
 } else if (ob_title_x < ob_marks_x) {
  ob_left_x = ob_title_x;
  ob_left_width = ob_title_width;
  ob_right_x = ob_marks_x;
  ob_right_width = ob_marks_width;
 } else {
  ob_left_x = ob_marks_x;
  ob_left_width = ob_marks_width;
  ob_right_x = ob_title_x;
  ob_right_width = ob_title_width;
 }
 if (ob_left_x < ob_inner_x) {
  ob_left_x = ob_inner_x;
 } else if (ob_left_x + ob_left_width > ob_right_x + ob_right_width) {
  ob_right_x = ob_left_x;
  ob_right_width = ob_left_width;
 }


 box.width = ob_right_x - ob_left_x - ob_left_width;
 if (box.width > 0) {
  box.x = ob_left_x + ob_left_width + round(output_x * output_scale);
  box.y = round(bg_y * output_scale);
  box.height = ob_bg_height;
  render_rect(output, output_damage, &box, color);
 }


 box.x = x + titlebar_border_thickness;
 box.y = y + titlebar_border_thickness;
 box.width = titlebar_h_padding - titlebar_border_thickness;
 box.height = (titlebar_v_padding - titlebar_border_thickness) * 2 +
  config->font_height;
 scale_box(&box, output_scale);
 int left_x = ob_left_x + round(output_x * output_scale);
 if (box.x + box.width < left_x) {
  box.width += left_x - box.x - box.width;
 }
 render_rect(output, output_damage, &box, color);


 box.x = x + width - titlebar_h_padding;
 box.y = y + titlebar_border_thickness;
 box.width = titlebar_h_padding - titlebar_border_thickness;
 box.height = (titlebar_v_padding - titlebar_border_thickness) * 2 +
  config->font_height;
 scale_box(&box, output_scale);
 int right_rx = ob_right_x + ob_right_width + round(output_x * output_scale);
 if (right_rx < box.x) {
  box.width += box.x - right_rx;
  box.x = right_rx;
 }
 render_rect(output, output_damage, &box, color);
}
