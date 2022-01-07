
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int read_line_full (int *,size_t,int ,char**) ;

__attribute__((used)) static inline int read_line(FILE *f, size_t limit, char **ret) {
        return read_line_full(f, limit, 0, ret);
}
