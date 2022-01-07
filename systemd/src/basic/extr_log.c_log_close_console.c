
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_fd ;
 int safe_close_above_stdio (int ) ;

__attribute__((used)) static void log_close_console(void) {
        console_fd = safe_close_above_stdio(console_fd);
}
