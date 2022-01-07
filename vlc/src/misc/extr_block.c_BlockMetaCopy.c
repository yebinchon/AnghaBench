
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_length; int i_flags; int i_pts; int i_dts; int i_nb_samples; int p_next; } ;
typedef TYPE_1__ block_t ;



__attribute__((used)) static void BlockMetaCopy( block_t *restrict out, const block_t *in )
{
    out->p_next = in->p_next;
    out->i_nb_samples = in->i_nb_samples;
    out->i_dts = in->i_dts;
    out->i_pts = in->i_pts;
    out->i_flags = in->i_flags;
    out->i_length = in->i_length;
}
