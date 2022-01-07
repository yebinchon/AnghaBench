
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Window ;
struct TYPE_3__ {int display; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef scalar_t__ Atom ;


 int AnyPropertyType ;
 int False ;
 scalar_t__ None ;
 int Success ;
 int True ;
 int XGetWindowProperty (int ,int ,scalar_t__,int ,long,int ,int ,scalar_t__*,int*,unsigned long*,unsigned long*,unsigned char**) ;
 scalar_t__ XInternAtom (int ,char*,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static int
get_property_value(RDPCLIENT * This, Window wnd, char *propname, long max_length,
     unsigned long *nitems_return, unsigned char **prop_return, int nowarn)
{
 int result;
 Atom property;
 Atom actual_type_return;
 int actual_format_return;
 unsigned long bytes_after_return;

 property = XInternAtom(This->display, propname, True);
 if (property == None)
 {
  fprintf(stderr, "Atom %s does not exist\n", propname);
  return (-1);
 }

 result = XGetWindowProperty(This->display, wnd, property, 0,
        max_length,
        False,
        AnyPropertyType,
        &actual_type_return,
        &actual_format_return,
        nitems_return, &bytes_after_return, prop_return);

 if (result != Success)
 {
  fprintf(stderr, "XGetWindowProperty failed\n");
  return (-1);
 }

 if (actual_type_return == None || actual_format_return == 0)
 {
  if (!nowarn)
   fprintf(stderr, "Window is missing property %s\n", propname);
  return (-1);
 }

 if (bytes_after_return)
 {
  fprintf(stderr, "%s is too big for me\n", propname);
  return (-1);
 }

 if (actual_format_return != 32)
 {
  fprintf(stderr, "%s has bad format\n", propname);
  return (-1);
 }

 return (0);
}
