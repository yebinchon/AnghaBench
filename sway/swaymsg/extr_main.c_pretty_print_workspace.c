
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 scalar_t__ json_object_get_boolean (int *) ;
 char* json_object_get_string (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int printf (char*,char*,char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void pretty_print_workspace(json_object *w) {
 json_object *name, *rect, *visible, *output, *urgent, *layout,
    *representation, *focused;
 json_object_object_get_ex(w, "name", &name);
 json_object_object_get_ex(w, "rect", &rect);
 json_object_object_get_ex(w, "visible", &visible);
 json_object_object_get_ex(w, "output", &output);
 json_object_object_get_ex(w, "urgent", &urgent);
 json_object_object_get_ex(w, "layout", &layout);
 json_object_object_get_ex(w, "representation", &representation);
 json_object_object_get_ex(w, "focused", &focused);
 printf(
  "Workspace %s%s%s%s\n"
  "  Output: %s\n"
  "  Layout: %s\n"
  "  Representation: %s\n\n",
  json_object_get_string(name),
  json_object_get_boolean(focused) ? " (focused)" : "",
  !json_object_get_boolean(visible) ? " (off-screen)" : "",
  json_object_get_boolean(urgent) ? " (urgent)" : "",
  json_object_get_string(output),
  json_object_get_string(layout),
  json_object_get_string(representation)
 );
}
