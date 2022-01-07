
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zed_strings_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
typedef int u_longlong_t ;
typedef int nvpair_t ;
typedef scalar_t__ int64_t ;
typedef int buf ;


 scalar_t__ DATA_TYPE_INT64_ARRAY ;
 int MAXBUF ;
 int _zed_event_add_array_err (int ,char const*) ;
 int _zed_event_add_var (int ,int *,char const*,char const*,char*,char*) ;
 int assert (int) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 int nvpair_value_int64_array (int *,scalar_t__**,size_t*) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int
_zed_event_add_int64_array(uint64_t eid, zed_strings_t *zsp,
    const char *prefix, nvpair_t *nvp)
{
 char buf[MAXBUF];
 int buflen = sizeof (buf);
 const char *name;
 int64_t *i64p;
 uint_t nelem;
 uint_t i;
 char *p;
 int n;

 assert((nvp != ((void*)0)) && (nvpair_type(nvp) == DATA_TYPE_INT64_ARRAY));

 name = nvpair_name(nvp);
 (void) nvpair_value_int64_array(nvp, &i64p, &nelem);
 for (i = 0, p = buf; (i < nelem) && (buflen > 0); i++) {
  n = snprintf(p, buflen, "%lld ", (u_longlong_t)i64p[i]);
  if ((n < 0) || (n >= buflen))
   return (_zed_event_add_array_err(eid, name));
  p += n;
  buflen -= n;
 }
 if (nelem > 0)
  *--p = '\0';

 return (_zed_event_add_var(eid, zsp, prefix, name, "%s", buf));
}
