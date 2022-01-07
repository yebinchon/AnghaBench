
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;



__attribute__((used)) static inline int32_t
get_length(const uint8_t * data) {
 const uint8_t * b = (const uint8_t *)data;
 int32_t len = b[0] | b[1]<<8 | b[2]<<16 | b[3]<<24;
 return len;
}
