
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int read_full_stream_full (int *,int *,int ,char**,size_t*) ;

__attribute__((used)) static inline int read_full_stream(FILE *f, char **contents, size_t *size) {
        return read_full_stream_full(f, ((void*)0), 0, contents, size);
}
