
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct write_block {int dummy; } ;


 int COMBINE_TYPE (int ,int) ;
 int TYPE_BOOLEAN ;
 int wb_push (struct write_block*,int *,int) ;

__attribute__((used)) static inline void
wb_boolean(struct write_block *wb, int boolean) {
 uint8_t n = COMBINE_TYPE(TYPE_BOOLEAN , boolean ? 1 : 0);
 wb_push(wb, &n, 1);
}
