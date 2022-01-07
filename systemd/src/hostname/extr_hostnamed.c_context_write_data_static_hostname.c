
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ Context ;


 int ENOENT ;
 size_t PROP_STATIC_HOSTNAME ;
 int assert (TYPE_1__*) ;
 int errno ;
 scalar_t__ isempty (int ) ;
 scalar_t__ unlink (char*) ;
 int write_string_file_atomic_label (char*,int ) ;

__attribute__((used)) static int context_write_data_static_hostname(Context *c) {

        assert(c);

        if (isempty(c->data[PROP_STATIC_HOSTNAME])) {

                if (unlink("/etc/hostname") < 0)
                        return errno == ENOENT ? 0 : -errno;

                return 0;
        }
        return write_string_file_atomic_label("/etc/hostname", c->data[PROP_STATIC_HOSTNAME]);
}
