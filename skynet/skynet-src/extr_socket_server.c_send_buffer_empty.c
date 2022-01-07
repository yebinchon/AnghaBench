
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * head; } ;
struct TYPE_3__ {int * head; } ;
struct socket {TYPE_2__ low; TYPE_1__ high; } ;



__attribute__((used)) static inline int
send_buffer_empty(struct socket *s) {
 return (s->high.head == ((void*)0) && s->low.head == ((void*)0));
}
