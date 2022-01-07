
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pd_types; size_t pd_proptype; scalar_t__ pd_attr; char* pd_values; char* pd_strdefault; int pd_numdefault; int pd_propnum; scalar_t__ pd_visible; } ;
typedef TYPE_1__ zprop_desc_t ;
typedef char const* u_longlong_t ;
typedef int ssize_t ;
typedef int number ;
struct TYPE_6__ {int ztm_type; char const* ztm_name; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 scalar_t__ PROP_ONETIME ;
 scalar_t__ PROP_READONLY ;



 scalar_t__ ZFS_TYPE_POOL ;
 int snprintf (char*,size_t,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 TYPE_3__* type_map ;
 int zprop_index_to_string (int ,int ,char const**,int) ;
 char** zprop_types ;

__attribute__((used)) static ssize_t
zprop_sysfs_show(const char *attr_name, const zprop_desc_t *property,
    char *buf, size_t buflen)
{
 const char *show_str;
 char number[32];


 if (strcmp(attr_name, "datasets") == 0 &&
     property->pd_types != ZFS_TYPE_POOL) {
  int len = 0;

  for (int i = 0; i < ARRAY_SIZE(type_map); i++) {
   if (type_map[i].ztm_type & property->pd_types) {
    len += snprintf(buf + len, buflen - len, "%s ",
        type_map[i].ztm_name);
   }
  }
  len += snprintf(buf + len, buflen - len, "\n");
  return (len);
 }

 if (strcmp(attr_name, "type") == 0) {
  show_str = zprop_types[property->pd_proptype];
 } else if (strcmp(attr_name, "readonly") == 0) {
  show_str = property->pd_attr == PROP_READONLY ? "1" : "0";
 } else if (strcmp(attr_name, "setonce") == 0) {
  show_str = property->pd_attr == PROP_ONETIME ? "1" : "0";
 } else if (strcmp(attr_name, "visible") == 0) {
  show_str = property->pd_visible ? "1" : "0";
 } else if (strcmp(attr_name, "values") == 0) {
  show_str = property->pd_values ? property->pd_values : "";
 } else if (strcmp(attr_name, "default") == 0) {
  switch (property->pd_proptype) {
  case 129:
   (void) snprintf(number, sizeof (number), "%llu",
       (u_longlong_t)property->pd_numdefault);
   show_str = number;
   break;
  case 128:
   show_str = property->pd_strdefault ?
       property->pd_strdefault : "";
   break;
  case 130:
   if (zprop_index_to_string(property->pd_propnum,
       property->pd_numdefault, &show_str,
       property->pd_types) != 0) {
    show_str = "";
   }
   break;
  default:
   return (0);
  }
 } else {
  return (0);
 }

 return (snprintf(buf, buflen, "%s\n", show_str));
}
