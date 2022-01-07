
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct read_block {int dummy; } ;
typedef int n ;
typedef int lua_State ;
typedef int lua_Integer ;
typedef int int64_t ;
typedef int int32_t ;







 int invalid_stream (int *,struct read_block*) ;
 int memcpy (int *,int *,int) ;
 int * rb_read (struct read_block*,int) ;

__attribute__((used)) static lua_Integer
get_integer(lua_State *L, struct read_block *rb, int cookie) {
 switch (cookie) {
 case 128:
  return 0;
 case 132: {
  uint8_t n;
  uint8_t * pn = rb_read(rb,sizeof(n));
  if (pn == ((void*)0))
   invalid_stream(L,rb);
  n = *pn;
  return n;
 }
 case 129: {
  uint16_t n;
  uint16_t * pn = rb_read(rb,sizeof(n));
  if (pn == ((void*)0))
   invalid_stream(L,rb);
  memcpy(&n, pn, sizeof(n));
  return n;
 }
 case 131: {
  int32_t n;
  int32_t * pn = rb_read(rb,sizeof(n));
  if (pn == ((void*)0))
   invalid_stream(L,rb);
  memcpy(&n, pn, sizeof(n));
  return n;
 }
 case 130: {
  int64_t n;
  int64_t * pn = rb_read(rb,sizeof(n));
  if (pn == ((void*)0))
   invalid_stream(L,rb);
  memcpy(&n, pn, sizeof(n));
  return n;
 }
 default:
  invalid_stream(L,rb);
  return 0;
 }
}
