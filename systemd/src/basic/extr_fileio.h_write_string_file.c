
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WriteStringFileFlags ;


 int write_string_file_ts (char const*,char const*,int ,int *) ;

__attribute__((used)) static inline int write_string_file(const char *fn, const char *line, WriteStringFileFlags flags) {
        return write_string_file_ts(fn, line, flags, ((void*)0));
}
