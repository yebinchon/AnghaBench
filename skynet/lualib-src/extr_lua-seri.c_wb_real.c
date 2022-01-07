
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef double uint8_t ;
struct write_block {int dummy; } ;


 double COMBINE_TYPE (int ,int ) ;
 int TYPE_NUMBER ;
 int TYPE_NUMBER_REAL ;
 int wb_push (struct write_block*,double*,int) ;

__attribute__((used)) static inline void
wb_real(struct write_block *wb, double v) {
 uint8_t n = COMBINE_TYPE(TYPE_NUMBER , TYPE_NUMBER_REAL);
 wb_push(wb, &n, 1);
 wb_push(wb, &v, sizeof(v));
}
