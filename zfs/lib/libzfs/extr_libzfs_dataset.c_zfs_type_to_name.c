
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_type_t ;


 int TEXT_DOMAIN ;





 int assert (int) ;
 char const* dgettext (int ,char*) ;

const char *
zfs_type_to_name(zfs_type_t type)
{
 switch (type) {
 case 131:
  return (dgettext(TEXT_DOMAIN, "filesystem"));
 case 129:
  return (dgettext(TEXT_DOMAIN, "snapshot"));
 case 128:
  return (dgettext(TEXT_DOMAIN, "volume"));
 case 130:
  return (dgettext(TEXT_DOMAIN, "pool"));
 case 132:
  return (dgettext(TEXT_DOMAIN, "bookmark"));
 default:
  assert(!"unhandled zfs_type_t");
 }

 return (((void*)0));
}
