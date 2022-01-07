
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_2__ {size_t written_uncompressed; int output_fd; } ;
typedef TYPE_1__ RawImport ;


 int EIO ;
 scalar_t__ sparse_write (int ,void const*,size_t,int) ;

__attribute__((used)) static int raw_import_write(const void *p, size_t sz, void *userdata) {
        RawImport *i = userdata;
        ssize_t n;

        n = sparse_write(i->output_fd, p, sz, 64);
        if (n < 0)
                return (int) n;
        if ((size_t) n < sz)
                return -EIO;

        i->written_uncompressed += sz;

        return 0;
}
