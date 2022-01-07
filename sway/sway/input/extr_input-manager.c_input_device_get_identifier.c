
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_input_device {int vendor; int product; int name; } ;


 int SWAY_ERROR ;
 int free (char*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char const*,int,int,char*) ;
 char* strdup (int ) ;
 int strip_whitespace (char*) ;
 int sway_log (int ,char*) ;

char *input_device_get_identifier(struct wlr_input_device *device) {
 int vendor = device->vendor;
 int product = device->product;
 char *name = strdup(device->name);
 strip_whitespace(name);

 char *p = name;
 for (; *p; ++p) {
  if (*p == ' ') {
   *p = '_';
  }
 }

 const char *fmt = "%d:%d:%s";
 int len = snprintf(((void*)0), 0, fmt, vendor, product, name) + 1;
 char *identifier = malloc(len);
 if (!identifier) {
  sway_log(SWAY_ERROR, "Unable to allocate unique input device name");
  return ((void*)0);
 }

 snprintf(identifier, len, fmt, vendor, product, name);
 free(name);
 return identifier;
}
