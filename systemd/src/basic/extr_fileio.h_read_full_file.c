
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read_full_file_full (char const*,int ,char**,size_t*) ;

__attribute__((used)) static inline int read_full_file(const char *filename, char **contents, size_t *size) {
        return read_full_file_full(filename, 0, contents, size);
}
