
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_call; } ;
typedef TYPE_1__ DefaultHandler ;



__attribute__((used)) static inline void start_object_call(DefaultHandler *This)
{
    This->in_call++;
}
