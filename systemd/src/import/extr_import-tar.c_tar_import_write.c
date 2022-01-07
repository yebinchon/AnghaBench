
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t written_uncompressed; int tar_fd; } ;
typedef TYPE_1__ TarImport ;


 int loop_write (int ,void const*,size_t,int) ;

__attribute__((used)) static int tar_import_write(const void *p, size_t sz, void *userdata) {
        TarImport *i = userdata;
        int r;

        r = loop_write(i->tar_fd, p, sz, 0);
        if (r < 0)
                return r;

        i->written_uncompressed += sz;

        return 0;
}
