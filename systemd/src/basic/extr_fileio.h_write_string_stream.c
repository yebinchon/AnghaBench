
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WriteStringFileFlags ;
typedef int FILE ;


 int write_string_stream_ts (int *,char const*,int ,int *) ;

__attribute__((used)) static inline int write_string_stream(FILE *f, const char *line, WriteStringFileFlags flags) {
        return write_string_stream_ts(f, line, flags, ((void*)0));
}
