
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int * json_object_array_get_idx (int *,size_t) ;
 size_t json_object_array_length (int *) ;
 scalar_t__ json_object_get_boolean (int *) ;
 double json_object_get_double (int *) ;
 int json_object_get_int (int *) ;
 char* json_object_get_string (int *) ;
 scalar_t__ json_object_is_type (int *,int ) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int json_type_array ;
 int printf (char*,...) ;

__attribute__((used)) static void pretty_print_output(json_object *o) {
 json_object *name, *rect, *focused, *active, *ws, *current_mode;
 json_object_object_get_ex(o, "name", &name);
 json_object_object_get_ex(o, "rect", &rect);
 json_object_object_get_ex(o, "focused", &focused);
 json_object_object_get_ex(o, "active", &active);
 json_object_object_get_ex(o, "current_workspace", &ws);
 json_object *make, *model, *serial, *scale, *subpixel, *transform;
 json_object_object_get_ex(o, "make", &make);
 json_object_object_get_ex(o, "model", &model);
 json_object_object_get_ex(o, "serial", &serial);
 json_object_object_get_ex(o, "scale", &scale);
 json_object_object_get_ex(o, "subpixel_hinting", &subpixel);
 json_object_object_get_ex(o, "transform", &transform);
 json_object *x, *y;
 json_object_object_get_ex(rect, "x", &x);
 json_object_object_get_ex(rect, "y", &y);
 json_object *modes;
 json_object_object_get_ex(o, "modes", &modes);
 json_object *width, *height, *refresh;
 json_object_object_get_ex(o, "current_mode", &current_mode);
 json_object_object_get_ex(current_mode, "width", &width);
 json_object_object_get_ex(current_mode, "height", &height);
 json_object_object_get_ex(current_mode, "refresh", &refresh);

 if (json_object_get_boolean(active)) {
  printf(
   "Output %s '%s %s %s'%s\n"
   "  Current mode: %dx%d @ %f Hz\n"
   "  Position: %d,%d\n"
   "  Scale factor: %f\n"
   "  Subpixel hinting: %s\n"
   "  Transform: %s\n"
   "  Workspace: %s\n",
   json_object_get_string(name),
   json_object_get_string(make),
   json_object_get_string(model),
   json_object_get_string(serial),
   json_object_get_boolean(focused) ? " (focused)" : "",
   json_object_get_int(width),
   json_object_get_int(height),
   (float)json_object_get_int(refresh) / 1000,
   json_object_get_int(x), json_object_get_int(y),
   json_object_get_double(scale),
   json_object_get_string(subpixel),
   json_object_get_string(transform),
   json_object_get_string(ws)
  );
 } else {
  printf(
   "Output %s '%s %s %s' (inactive)\n",
   json_object_get_string(name),
   json_object_get_string(make),
   json_object_get_string(model),
   json_object_get_string(serial)
  );
 }

 size_t modes_len = json_object_is_type(modes, json_type_array)
  ? json_object_array_length(modes) : 0;
 if (modes_len > 0) {
  printf("  Available modes:\n");
  for (size_t i = 0; i < modes_len; ++i) {
   json_object *mode = json_object_array_get_idx(modes, i);

   json_object *mode_width, *mode_height, *mode_refresh;
   json_object_object_get_ex(mode, "width", &mode_width);
   json_object_object_get_ex(mode, "height", &mode_height);
   json_object_object_get_ex(mode, "refresh", &mode_refresh);

   printf("    %dx%d @ %f Hz\n", json_object_get_int(mode_width),
    json_object_get_int(mode_height),
    (float)json_object_get_int(mode_refresh) / 1000);
  }
 }

 printf("\n");
}
