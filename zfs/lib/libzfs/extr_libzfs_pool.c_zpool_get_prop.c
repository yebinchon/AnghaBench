
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zpool_prop_t ;
struct TYPE_9__ {int * zpool_props; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int boolean_t ;


 scalar_t__ POOL_STATE_UNAVAIL ;



 int SPA_VERSION_FEATURES ;
 int UINT64_MAX ;
 int ZPROP_SRC_NONE ;
 int abort () ;
 int snprintf (char*,size_t,char*,...) ;
 int strlcpy (char*,char const*,size_t) ;
 int zfs_nicebytes (int,char*,size_t) ;
 int zfs_nicenum (int,char*,size_t) ;
 scalar_t__ zpool_get_all_props (TYPE_1__*) ;
 char const* zpool_get_name (TYPE_1__*) ;
 int zpool_get_prop_int (TYPE_1__*,int,int *) ;
 char const* zpool_get_prop_string (TYPE_1__*,int,int *) ;
 scalar_t__ zpool_get_state (TYPE_1__*) ;
 char const* zpool_get_state_str (TYPE_1__*) ;
 int zpool_prop_get_type (int) ;
 int zpool_prop_index_to_string (int,int,char const**) ;

int
zpool_get_prop(zpool_handle_t *zhp, zpool_prop_t prop, char *buf,
    size_t len, zprop_source_t *srctype, boolean_t literal)
{
 uint64_t intval;
 const char *strval;
 zprop_source_t src = ZPROP_SRC_NONE;

 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {
  switch (prop) {
  case 130:
   (void) strlcpy(buf, zpool_get_name(zhp), len);
   break;

  case 132:
   (void) strlcpy(buf, zpool_get_state_str(zhp), len);
   break;

  case 133:
   intval = zpool_get_prop_int(zhp, prop, &src);
   (void) snprintf(buf, len, "%llu", (u_longlong_t)intval);
   break;

  case 144:
  case 142:
  case 139:
   if (zhp->zpool_props != ((void*)0) ||
       zpool_get_all_props(zhp) == 0) {
    (void) strlcpy(buf,
        zpool_get_prop_string(zhp, prop, &src),
        len);
    break;
   }

  default:
   (void) strlcpy(buf, "-", len);
   break;
  }

  if (srctype != ((void*)0))
   *srctype = src;
  return (0);
 }

 if (zhp->zpool_props == ((void*)0) && zpool_get_all_props(zhp) &&
     prop != 130)
  return (-1);

 switch (zpool_prop_get_type(prop)) {
 case 146:
  (void) strlcpy(buf, zpool_get_prop_string(zhp, prop, &src),
      len);
  break;

 case 147:
  intval = zpool_get_prop_int(zhp, prop, &src);

  switch (prop) {
  case 129:
  case 145:
  case 135:
  case 134:
  case 131:
  case 143:
   if (literal)
    (void) snprintf(buf, len, "%llu",
        (u_longlong_t)intval);
   else
    (void) zfs_nicenum(intval, buf, len);
   break;

  case 137:
  case 140:
   if (intval == 0) {
    (void) strlcpy(buf, "-", len);
   } else if (literal) {
    (void) snprintf(buf, len, "%llu",
        (u_longlong_t)intval);
   } else {
    (void) zfs_nicebytes(intval, buf, len);
   }
   break;

  case 141:
   if (literal) {
    (void) snprintf(buf, len, "%llu",
        (u_longlong_t)intval);
   } else {
    (void) snprintf(buf, len, "%llu%%",
        (u_longlong_t)intval);
   }
   break;

  case 136:
   if (intval == UINT64_MAX) {
    (void) strlcpy(buf, "-", len);
   } else if (literal) {
    (void) snprintf(buf, len, "%llu",
        (u_longlong_t)intval);
   } else {
    (void) snprintf(buf, len, "%llu%%",
        (u_longlong_t)intval);
   }
   break;

  case 138:
   if (literal)
    (void) snprintf(buf, len, "%llu.%02llu",
        (u_longlong_t)(intval / 100),
        (u_longlong_t)(intval % 100));
   else
    (void) snprintf(buf, len, "%llu.%02llux",
        (u_longlong_t)(intval / 100),
        (u_longlong_t)(intval % 100));
   break;

  case 132:
   (void) strlcpy(buf, zpool_get_state_str(zhp), len);
   break;
  case 128:
   if (intval >= SPA_VERSION_FEATURES) {
    (void) snprintf(buf, len, "-");
    break;
   }

  default:
   (void) snprintf(buf, len, "%llu", (u_longlong_t)intval);
  }
  break;

 case 148:
  intval = zpool_get_prop_int(zhp, prop, &src);
  if (zpool_prop_index_to_string(prop, intval, &strval)
      != 0)
   return (-1);
  (void) strlcpy(buf, strval, len);
  break;

 default:
  abort();
 }

 if (srctype)
  *srctype = src;

 return (0);
}
