
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int dummy; } ;
struct screen {int window; struct size windowed_window_size; scalar_t__ fullscreen; } ;


 struct size get_native_window_size (int ) ;

__attribute__((used)) static struct size
get_window_size(const struct screen *screen) {
    if (screen->fullscreen) {
        return screen->windowed_window_size;
    }
    return get_native_window_size(screen->window);
}
