
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint16_t ;



__attribute__((used)) static inline uint16_t uint16le(unsigned char *data) { return data[0] | data[1] << 8; }
