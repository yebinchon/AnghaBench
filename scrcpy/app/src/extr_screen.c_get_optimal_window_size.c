
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int dummy; } ;
struct screen {int dummy; } ;


 struct size get_optimal_size (struct size,struct size) ;
 struct size get_window_size (struct screen const*) ;

__attribute__((used)) static inline struct size
get_optimal_window_size(const struct screen *screen, struct size frame_size) {
    struct size current_size = get_window_size(screen);
    return get_optimal_size(current_size, frame_size);
}
