
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sending; int * dw_buffer; } ;


 scalar_t__ send_buffer_empty (struct socket*) ;

__attribute__((used)) static inline int
nomore_sending_data(struct socket *s) {
 return send_buffer_empty(s) && s->dw_buffer == ((void*)0) && (s->sending & 0xffff) == 0;
}
