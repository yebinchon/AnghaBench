
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmsg_fd ;
 int safe_close (int ) ;

__attribute__((used)) static void log_close_kmsg(void) {
        kmsg_fd = safe_close(kmsg_fd);
}
