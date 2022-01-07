
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int free (scalar_t__*) ;
 int isdigit (char const) ;
 size_t make_flagged_int (unsigned long,scalar_t__*,size_t) ;
 scalar_t__* malloc (scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static uint8_t* oid_from_str(const char* oid_str, size_t* ret_len)
{
 uint8_t* oid = ((void*)0);
 unsigned long val1 = 0, val;
 const char *endp;
 int arcno = 0;
 size_t oid_len = 0;

 if ((oid_str == ((void*)0)) || (oid_str[0] == 0))
  return ((void*)0);


 oid = malloc(1 + strlen(oid_str) + 2);
 if (oid == ((void*)0))
  return ((void*)0);

 do {
  arcno++;
  val = strtoul(oid_str, (char**)&endp, 10);
  if (!isdigit(*oid_str) || !(*endp == '.' || !*endp))
   goto err;
  if (*endp == '.')
   oid_str = endp + 1;

  if (arcno == 1) {
   if (val > 2)
    break;
   val1 = val;
  } else if (arcno == 2) {

   if (val1 < 2) {
    if (val > 39)
     goto err;
    oid[oid_len++] = (uint8_t)(val1 * 40 + val);
   } else {
    val += 80;
    oid_len = make_flagged_int(val, oid, oid_len);
   }
  } else {
   oid_len = make_flagged_int(val, oid, oid_len);
  }
 } while (*endp == '.');


 if (arcno == 1 || oid_len < 2 || oid_len > 254)
  goto err;

 *ret_len = oid_len;
 return oid;

err:
 free(oid);
 return ((void*)0);
}
