
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ uint32le (unsigned char*) ;

__attribute__((used)) static inline uint64_t uint64le(unsigned char *data) { return (uint64_t)uint32le(data) | (uint64_t)uint32le(data + 4) << 32; }
