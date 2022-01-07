
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_is_read_only_fs (char*) ;

__attribute__((used)) static bool device_supported(void) {
        static int read_only = -1;




        if (read_only < 0)
                read_only = path_is_read_only_fs("/sys");

        return read_only <= 0;
}
