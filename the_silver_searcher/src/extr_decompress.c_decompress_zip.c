
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_err (char*,char const*) ;

__attribute__((used)) static void *decompress_zip(const void *buf, const int buf_len,
                            const char *dir_full_path, int *new_buf_len) {
    (void)buf;
    (void)buf_len;
    log_err("Zip files not yet supported: %s", dir_full_path);
    *new_buf_len = 0;
    return ((void*)0);
}
