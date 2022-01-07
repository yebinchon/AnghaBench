
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int time_t ;
typedef int lua_State ;


 int ATOM_FINC (int *) ;
 int BSON_OBJECTID ;
 int hextoint (char const) ;
 int luaL_error (int *,char*,char const*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (int*,int ,int) ;
 int oid_counter ;
 int oid_header ;
 int time (int *) ;

__attribute__((used)) static int
lobjectid(lua_State *L) {
 uint8_t oid[14] = { 0, BSON_OBJECTID };
 if (lua_isstring(L,1)) {
  size_t len;
  const char * str = lua_tolstring(L,1,&len);
  if (len != 24) {
   return luaL_error(L, "Invalid objectid %s", str);
  }
  int i;
  for (i=0;i<12;i++) {
   oid[i+2] = hextoint(str[i*2]) << 4 | hextoint(str[i*2+1]);
  }
 } else {
  time_t ti = time(((void*)0));

  uint32_t id = ATOM_FINC(&oid_counter);

  oid[2] = (ti>>24) & 0xff;
  oid[3] = (ti>>16) & 0xff;
  oid[4] = (ti>>8) & 0xff;
  oid[5] = ti & 0xff;
  memcpy(oid+6 , oid_header, 5);
  oid[11] = (id>>16) & 0xff;
  oid[12] = (id>>8) & 0xff;
  oid[13] = id & 0xff;
 }
 lua_pushlstring( L, (const char *)oid, 14);

 return 1;
}
