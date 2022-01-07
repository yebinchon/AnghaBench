
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static uint8_t
acpitbl_checksum(void *table, size_t length) {
 unsigned int i;
 uint8_t sum;

 for (sum = 0, i = 0; i < length; i++) {
  sum += ((uint8_t *) table)[i];
 }

 return (((uint8_t) 0) - sum);
}
