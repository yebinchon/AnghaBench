
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int uchar_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int int8_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef scalar_t__ hrtime_t ;
typedef int data_type_t ;
typedef scalar_t__ boolean_t ;
typedef int FILE ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int FPRINTF (int *,char*,...) ;
 int VERIFY0 (int ) ;
 scalar_t__ fnvpair_value_boolean_value (int *) ;
 int fnvpair_value_byte (int *) ;
 int fnvpair_value_int16 (int *) ;
 int fnvpair_value_int32 (int *) ;
 scalar_t__ fnvpair_value_int64 (int *) ;
 int fnvpair_value_int8 (int *) ;
 int * fnvpair_value_nvlist (int *) ;
 char* fnvpair_value_string (int *) ;
 int fnvpair_value_uint16 (int *) ;
 int fnvpair_value_uint32 (int *) ;
 scalar_t__ fnvpair_value_uint64 (int *) ;
 int fnvpair_value_uint8 (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvlist_print_json_string (int *,char*) ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_boolean_array (int *,scalar_t__**,size_t*) ;
 int nvpair_value_byte_array (int *,int **,size_t*) ;
 int nvpair_value_double (int *,double*) ;
 int nvpair_value_hrtime (int *,scalar_t__*) ;
 int nvpair_value_int16_array (int *,int **,size_t*) ;
 int nvpair_value_int32_array (int *,int **,size_t*) ;
 int nvpair_value_int64_array (int *,scalar_t__**,size_t*) ;
 int nvpair_value_int8_array (int *,int **,size_t*) ;
 int nvpair_value_nvlist_array (int *,int ***,size_t*) ;
 int nvpair_value_string_array (int *,char***,size_t*) ;
 int nvpair_value_uint16_array (int *,int **,size_t*) ;
 int nvpair_value_uint32_array (int *,int **,size_t*) ;
 int nvpair_value_uint64_array (int *,scalar_t__**,size_t*) ;
 int nvpair_value_uint8_array (int *,int **,size_t*) ;

int
nvlist_print_json(FILE *fp, nvlist_t *nvl)
{
 nvpair_t *curr;
 boolean_t first = B_TRUE;

 FPRINTF(fp, "{");

 for (curr = nvlist_next_nvpair(nvl, ((void*)0)); curr;
     curr = nvlist_next_nvpair(nvl, curr)) {
  data_type_t type = nvpair_type(curr);

  if (!first)
   FPRINTF(fp, ",");
  else
   first = B_FALSE;

  if (nvlist_print_json_string(fp, nvpair_name(curr)) == -1)
   return (-1);
  FPRINTF(fp, ":");

  switch (type) {
  case 138: {
   char *string = fnvpair_value_string(curr);
   if (nvlist_print_json_string(fp, string) == -1)
    return (-1);
   break;
  }

  case 156: {
   FPRINTF(fp, "true");
   break;
  }

  case 154: {
   FPRINTF(fp, "%s", fnvpair_value_boolean_value(curr) ==
       B_TRUE ? "true" : "false");
   break;
  }

  case 153: {
   FPRINTF(fp, "%hhu", fnvpair_value_byte(curr));
   break;
  }

  case 142: {
   FPRINTF(fp, "%hhd", fnvpair_value_int8(curr));
   break;
  }

  case 130: {
   FPRINTF(fp, "%hhu", fnvpair_value_uint8(curr));
   break;
  }

  case 148: {
   FPRINTF(fp, "%hd", fnvpair_value_int16(curr));
   break;
  }

  case 136: {
   FPRINTF(fp, "%hu", fnvpair_value_uint16(curr));
   break;
  }

  case 146: {
   FPRINTF(fp, "%d", fnvpair_value_int32(curr));
   break;
  }

  case 134: {
   FPRINTF(fp, "%u", fnvpair_value_uint32(curr));
   break;
  }

  case 144: {
   FPRINTF(fp, "%lld",
       (long long)fnvpair_value_int64(curr));
   break;
  }

  case 132: {
   FPRINTF(fp, "%llu",
       (unsigned long long)fnvpair_value_uint64(curr));
   break;
  }

  case 149: {
   hrtime_t val;
   VERIFY0(nvpair_value_hrtime(curr, &val));
   FPRINTF(fp, "%llu", (unsigned long long)val);
   break;
  }

  case 150: {
   double val;
   VERIFY0(nvpair_value_double(curr, &val));
   FPRINTF(fp, "%f", val);
   break;
  }

  case 140: {
   if (nvlist_print_json(fp,
       fnvpair_value_nvlist(curr)) == -1)
    return (-1);
   break;
  }

  case 137: {
   char **val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_string_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    if (nvlist_print_json_string(fp, val[i]) == -1)
     return (-1);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 139: {
   nvlist_t **val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_nvlist_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    if (nvlist_print_json(fp, val[i]) == -1)
     return (-1);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 155: {
   boolean_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_boolean_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, val[i] == B_TRUE ?
        "true" : "false");
   }
   FPRINTF(fp, "]");
   break;
  }

  case 152: {
   uchar_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_byte_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%hhu", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 129: {
   uint8_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_uint8_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%hhu", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 141: {
   int8_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_int8_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%hhd", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 135: {
   uint16_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_uint16_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%hu", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 147: {
   int16_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_int16_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%hd", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 133: {
   uint32_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_uint32_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%u", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 145: {
   int32_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_int32_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%d", val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 131: {
   uint64_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_uint64_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%llu",
        (unsigned long long)val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 143: {
   int64_t *val;
   uint_t valsz, i;
   VERIFY0(nvpair_value_int64_array(curr, &val, &valsz));
   FPRINTF(fp, "[");
   for (i = 0; i < valsz; i++) {
    if (i > 0)
     FPRINTF(fp, ",");
    FPRINTF(fp, "%lld", (long long)val[i]);
   }
   FPRINTF(fp, "]");
   break;
  }

  case 128:
  case 151:
   return (-1);
  }

 }

 FPRINTF(fp, "}");
 return (0);
}
