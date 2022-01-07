
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size {int dummy; } ;


 struct size get_optimal_size (struct size,struct size) ;

__attribute__((used)) static inline struct size
get_initial_optimal_size(struct size frame_size) {
    return get_optimal_size(frame_size, frame_size);
}
