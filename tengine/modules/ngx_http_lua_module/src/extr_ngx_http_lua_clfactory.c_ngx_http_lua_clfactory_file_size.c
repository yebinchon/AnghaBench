
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ fseek (int *,long,int ) ;
 long ftell (int *) ;

__attribute__((used)) static long
ngx_http_lua_clfactory_file_size(FILE *f)
{
    long cur_pos, len;

    cur_pos = ftell(f);
    if (cur_pos == -1) {
        return -1;
    }

    if (fseek(f, 0, SEEK_END) != 0) {
        return -1;
    }

    len = ftell(f);
    if (len == -1) {
        return -1;
    }

    if (fseek(f, cur_pos, SEEK_SET) != 0) {
        return -1;
    }

    return len;
}
