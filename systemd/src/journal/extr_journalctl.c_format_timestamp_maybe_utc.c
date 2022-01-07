
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 scalar_t__ arg_utc ;
 char* format_timestamp (char*,size_t,int ) ;
 char* format_timestamp_utc (char*,size_t,int ) ;

__attribute__((used)) static char *format_timestamp_maybe_utc(char *buf, size_t l, usec_t t) {

        if (arg_utc)
                return format_timestamp_utc(buf, l, t);

        return format_timestamp(buf, l, t);
}
