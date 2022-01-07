
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef int v64 ;
typedef int v32 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct write_block {int dummy; } ;
typedef int lua_Integer ;
typedef int int64_t ;
typedef int int32_t ;
typedef int byte ;


 int COMBINE_TYPE (int,int ) ;
 int TYPE_NUMBER ;
 int TYPE_NUMBER_BYTE ;
 int TYPE_NUMBER_DWORD ;
 int TYPE_NUMBER_QWORD ;
 int TYPE_NUMBER_WORD ;
 int TYPE_NUMBER_ZERO ;
 int wb_push (struct write_block*,int*,int) ;

__attribute__((used)) static inline void
wb_integer(struct write_block *wb, lua_Integer v) {
 int type = TYPE_NUMBER;
 if (v == 0) {
  uint8_t n = COMBINE_TYPE(type , TYPE_NUMBER_ZERO);
  wb_push(wb, &n, 1);
 } else if (v != (int32_t)v) {
  uint8_t n = COMBINE_TYPE(type , TYPE_NUMBER_QWORD);
  int64_t v64 = v;
  wb_push(wb, &n, 1);
  wb_push(wb, &v64, sizeof(v64));
 } else if (v < 0) {
  int32_t v32 = (int32_t)v;
  uint8_t n = COMBINE_TYPE(type , TYPE_NUMBER_DWORD);
  wb_push(wb, &n, 1);
  wb_push(wb, &v32, sizeof(v32));
 } else if (v<0x100) {
  uint8_t n = COMBINE_TYPE(type , TYPE_NUMBER_BYTE);
  wb_push(wb, &n, 1);
  uint8_t byte = (uint8_t)v;
  wb_push(wb, &byte, sizeof(byte));
 } else if (v<0x10000) {
  uint8_t n = COMBINE_TYPE(type , TYPE_NUMBER_WORD);
  wb_push(wb, &n, 1);
  uint16_t word = (uint16_t)v;
  wb_push(wb, &word, sizeof(word));
 } else {
  uint8_t n = COMBINE_TYPE(type , TYPE_NUMBER_DWORD);
  wb_push(wb, &n, 1);
  uint32_t v32 = (uint32_t)v;
  wb_push(wb, &v32, sizeof(v32));
 }
}
