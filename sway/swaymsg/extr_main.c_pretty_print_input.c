
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 int json_object_get_int (int *) ;
 char* json_object_get_string (int *) ;
 scalar_t__ json_object_object_get_ex (int *,char*,int **) ;
 int pretty_type_name (char*) ;
 int printf (char const*,...) ;

__attribute__((used)) static void pretty_print_input(json_object *i) {
 json_object *id, *name, *type, *product, *vendor, *kbdlayout, *libinput;
 json_object_object_get_ex(i, "identifier", &id);
 json_object_object_get_ex(i, "name", &name);
 json_object_object_get_ex(i, "type", &type);
 json_object_object_get_ex(i, "product", &product);
 json_object_object_get_ex(i, "vendor", &vendor);

 const char *fmt =
  "Input device: %s\n"
  "  Type: %s\n"
  "  Identifier: %s\n"
  "  Product ID: %d\n"
  "  Vendor ID: %d\n";


 printf(fmt, json_object_get_string(name),
  pretty_type_name(json_object_get_string(type)),
  json_object_get_string(id),
  json_object_get_int(product),
  json_object_get_int(vendor));

 if (json_object_object_get_ex(i, "xkb_active_layout_name", &kbdlayout)) {
  const char *layout = json_object_get_string(kbdlayout);
  printf("  Active Keyboard Layout: %s\n", layout ? layout : "(unnamed)");
 }

 if (json_object_object_get_ex(i, "libinput", &libinput)) {
  json_object *events;
  if (json_object_object_get_ex(libinput, "send_events", &events)) {
   printf("  Libinput Send Events: %s\n",
     json_object_get_string(events));
  }
 }

 printf("\n");
}
