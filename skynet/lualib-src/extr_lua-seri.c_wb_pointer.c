
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef void* uint8_t ;
struct write_block {int dummy; } ;


 void* TYPE_USERDATA ;
 int wb_push (struct write_block*,void**,int) ;

__attribute__((used)) static inline void
wb_pointer(struct write_block *wb, void *v) {
 uint8_t n = TYPE_USERDATA;
 wb_push(wb, &n, 1);
 wb_push(wb, &v, sizeof(v));
}
