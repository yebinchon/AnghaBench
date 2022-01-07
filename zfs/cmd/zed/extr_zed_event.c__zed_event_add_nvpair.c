
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;
typedef char* uint8_t ;
typedef int uint64_t ;
typedef char* uint32_t ;
typedef char* uint16_t ;
typedef char* u_longlong_t ;
typedef int nvpair_t ;
typedef char* longlong_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int hrtime_t ;
typedef int data_type_t ;
typedef int boolean_t ;
typedef int alt ;
 int EINVAL ;
 int FM_EREPORT_PAYLOAD_ZFS_POOL_STATE ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_LASTSTATE ;
 int FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE ;
 int LOG_WARNING ;
 int VDEV_AUX_NONE ;
 char* ZEVENT_VAR_PREFIX ;
 int _zed_event_add_int16_array (int ,int *,char const*,int *) ;
 int _zed_event_add_int32_array (int ,int *,char const*,int *) ;
 int _zed_event_add_int64_array (int ,int *,char const*,int *) ;
 int _zed_event_add_int8_array (int ,int *,char const*,int *) ;
 int _zed_event_add_string_array (int ,int *,char const*,int *) ;
 int _zed_event_add_uint16_array (int ,int *,char const*,int *) ;
 int _zed_event_add_uint32_array (int ,int *,char const*,int *) ;
 int _zed_event_add_uint64_array (int ,int *,char const*,int *) ;
 int _zed_event_add_uint8_array (int ,int *,char const*,int *) ;
 int _zed_event_add_var (int ,int *,char const*,char const*,char*,...) ;
 int _zed_event_value_is_hex (char const*) ;
 int assert (int ) ;
 int errno ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_boolean_value (int *,int *) ;
 int nvpair_value_byte (int *,char**) ;
 int nvpair_value_double (int *,double*) ;
 int nvpair_value_hrtime (int *,int *) ;
 int nvpair_value_int16 (int *,int *) ;
 int nvpair_value_int32 (int *,int *) ;
 int nvpair_value_int64 (int *,int *) ;
 int nvpair_value_int8 (int *,int *) ;
 int nvpair_value_string (int *,char**) ;
 int nvpair_value_uint16 (int *,char**) ;
 int nvpair_value_uint32 (int *,char**) ;
 int nvpair_value_uint64 (int *,int *) ;
 int nvpair_value_uint8 (int *,char**) ;
 int snprintf (char*,int,char*,char const*) ;
 int strcmp (char const*,int ) ;
 int zed_log_msg (int ,char*,char const*,int ,unsigned int) ;
 char* zpool_pool_state_to_name (int ) ;
 char* zpool_state_to_name (int ,int ) ;

__attribute__((used)) static void
_zed_event_add_nvpair(uint64_t eid, zed_strings_t *zsp, nvpair_t *nvp)
{
 const char *name;
 data_type_t type;
 const char *prefix = ZEVENT_VAR_PREFIX;
 boolean_t b;
 double d;
 uint8_t i8;
 uint16_t i16;
 uint32_t i32;
 uint64_t i64;
 char *str;

 assert(zsp != ((void*)0));
 assert(nvp != ((void*)0));

 name = nvpair_name(nvp);
 type = nvpair_type(nvp);

 switch (type) {
 case 154:
  _zed_event_add_var(eid, zsp, prefix, name, "%s", "1");
  break;
 case 152:
  (void) nvpair_value_boolean_value(nvp, &b);
  _zed_event_add_var(eid, zsp, prefix, name, "%s", b ? "1" : "0");
  break;
 case 151:
  (void) nvpair_value_byte(nvp, &i8);
  _zed_event_add_var(eid, zsp, prefix, name, "%d", i8);
  break;
 case 141:
  (void) nvpair_value_int8(nvp, (int8_t *)&i8);
  _zed_event_add_var(eid, zsp, prefix, name, "%d", i8);
  break;
 case 129:
  (void) nvpair_value_uint8(nvp, &i8);
  _zed_event_add_var(eid, zsp, prefix, name, "%u", i8);
  break;
 case 147:
  (void) nvpair_value_int16(nvp, (int16_t *)&i16);
  _zed_event_add_var(eid, zsp, prefix, name, "%d", i16);
  break;
 case 135:
  (void) nvpair_value_uint16(nvp, &i16);
  _zed_event_add_var(eid, zsp, prefix, name, "%u", i16);
  break;
 case 145:
  (void) nvpair_value_int32(nvp, (int32_t *)&i32);
  _zed_event_add_var(eid, zsp, prefix, name, "%d", i32);
  break;
 case 133:
  (void) nvpair_value_uint32(nvp, &i32);
  _zed_event_add_var(eid, zsp, prefix, name, "%u", i32);
  break;
 case 143:
  (void) nvpair_value_int64(nvp, (int64_t *)&i64);
  _zed_event_add_var(eid, zsp, prefix, name,
      "%lld", (longlong_t)i64);
  break;
 case 131:
  (void) nvpair_value_uint64(nvp, &i64);
  _zed_event_add_var(eid, zsp, prefix, name,
      (_zed_event_value_is_hex(name) ? "0x%.16llX" : "%llu"),
      (u_longlong_t)i64);



  if (strcmp(name, FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE) == 0 ||
      strcmp(name, FM_EREPORT_PAYLOAD_ZFS_VDEV_LASTSTATE) == 0) {
   char alt[32];

   (void) snprintf(alt, sizeof (alt), "%s_str", name);
   _zed_event_add_var(eid, zsp, prefix, alt, "%s",
       zpool_state_to_name(i64, VDEV_AUX_NONE));
  } else



  if (strcmp(name, FM_EREPORT_PAYLOAD_ZFS_POOL_STATE) == 0) {
   char alt[32];

   (void) snprintf(alt, sizeof (alt), "%s_str", name);
   _zed_event_add_var(eid, zsp, prefix, alt, "%s",
       zpool_pool_state_to_name(i64));
  }
  break;
 case 149:
  (void) nvpair_value_double(nvp, &d);
  _zed_event_add_var(eid, zsp, prefix, name, "%g", d);
  break;
 case 148:
  (void) nvpair_value_hrtime(nvp, (hrtime_t *)&i64);
  _zed_event_add_var(eid, zsp, prefix, name,
      "%llu", (u_longlong_t)i64);
  break;
 case 139:
  _zed_event_add_var(eid, zsp, prefix, name,
      "%s", "_NOT_IMPLEMENTED_");
  break;
 case 137:
  (void) nvpair_value_string(nvp, &str);
  _zed_event_add_var(eid, zsp, prefix, name,
      "%s", (str ? str : "<NULL>"));
  break;
 case 153:
  _zed_event_add_var(eid, zsp, prefix, name,
      "%s", "_NOT_IMPLEMENTED_");
  break;
 case 150:
  _zed_event_add_var(eid, zsp, prefix, name,
      "%s", "_NOT_IMPLEMENTED_");
  break;
 case 140:
  _zed_event_add_int8_array(eid, zsp, prefix, nvp);
  break;
 case 128:
  _zed_event_add_uint8_array(eid, zsp, prefix, nvp);
  break;
 case 146:
  _zed_event_add_int16_array(eid, zsp, prefix, nvp);
  break;
 case 134:
  _zed_event_add_uint16_array(eid, zsp, prefix, nvp);
  break;
 case 144:
  _zed_event_add_int32_array(eid, zsp, prefix, nvp);
  break;
 case 132:
  _zed_event_add_uint32_array(eid, zsp, prefix, nvp);
  break;
 case 142:
  _zed_event_add_int64_array(eid, zsp, prefix, nvp);
  break;
 case 130:
  _zed_event_add_uint64_array(eid, zsp, prefix, nvp);
  break;
 case 136:
  _zed_event_add_string_array(eid, zsp, prefix, nvp);
  break;
 case 138:
  _zed_event_add_var(eid, zsp, prefix, name,
      "%s", "_NOT_IMPLEMENTED_");
  break;
 default:
  errno = EINVAL;
  zed_log_msg(LOG_WARNING,
      "Failed to convert nvpair \"%s\" for eid=%llu: "
      "Unrecognized type=%u", name, eid, (unsigned int) type);
  break;
 }
}
