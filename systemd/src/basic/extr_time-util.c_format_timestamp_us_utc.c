
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 char* format_timestamp_internal (char*,size_t,int ,int,int) ;

char *format_timestamp_us_utc(char *buf, size_t l, usec_t t) {
        return format_timestamp_internal(buf, l, t, 1, 1);
}
