
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct write_block {int dummy; } ;


 int TYPE_NIL ;
 int wb_push (struct write_block*,int *,int) ;

__attribute__((used)) static inline void
wb_nil(struct write_block *wb) {
 uint8_t n = TYPE_NIL;
 wb_push(wb, &n, 1);
}
