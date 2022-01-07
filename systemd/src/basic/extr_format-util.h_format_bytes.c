
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FORMAT_BYTES_BELOW_POINT ;
 int FORMAT_BYTES_TRAILING_B ;
 int FORMAT_BYTES_USE_IEC ;
 char* format_bytes_full (char*,size_t,int ,int) ;

__attribute__((used)) static inline char *format_bytes(char *buf, size_t l, uint64_t t) {
        return format_bytes_full(buf, l, t, FORMAT_BYTES_USE_IEC | FORMAT_BYTES_BELOW_POINT | FORMAT_BYTES_TRAILING_B);
}
