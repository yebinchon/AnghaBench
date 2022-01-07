
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_data; } ;
typedef TYPE_1__ cc_data_t ;



__attribute__((used)) static inline void cc_Flush( cc_data_t *c )
{
    c->i_data = 0;
}
