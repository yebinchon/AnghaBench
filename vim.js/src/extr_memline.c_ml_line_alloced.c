
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ml_flags; } ;
struct TYPE_4__ {TYPE_1__ b_ml; } ;


 int ML_LINE_DIRTY ;
 TYPE_2__* curbuf ;

int
ml_line_alloced()
{
    return (curbuf->b_ml.ml_flags & ML_LINE_DIRTY);
}
