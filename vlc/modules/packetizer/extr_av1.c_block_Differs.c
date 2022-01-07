
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool block_Differs(const block_t *a, const block_t *b)
{
    return (a->i_buffer != b->i_buffer ||
            memcmp(a->p_buffer, b->p_buffer, a->i_buffer));
}
