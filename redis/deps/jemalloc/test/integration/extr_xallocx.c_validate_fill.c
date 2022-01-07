
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint8_t ;


 int print_filled_extents (void const*,scalar_t__ const,size_t) ;

__attribute__((used)) static bool
validate_fill(const void *p, uint8_t c, size_t offset, size_t len) {
 const uint8_t *pc = (const uint8_t *)p;
 bool err;
 size_t i;

 for (i = offset, err = 0; i < offset+len; i++) {
  if (pc[i] != c) {
   err = 1;
  }
 }

 if (err) {
  print_filled_extents(p, c, offset + len);
 }

 return err;
}
