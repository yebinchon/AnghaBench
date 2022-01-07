
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; } ;
struct TYPE_6__ {int bottom; void* right; scalar_t__ top; void* left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ ME_Run ;
typedef int ME_Context ;


 void* ME_PointFromCharContext (int *,TYPE_2__*,int,int ) ;
 int TRUE ;
 int max (int ,int) ;
 int min (int ,int) ;

__attribute__((used)) static void get_selection_rect( ME_Context *c, ME_Run *run, int from, int to, int cy, RECT *r )
{
    from = max( 0, from );
    to = min( run->len, to );
    r->left = ME_PointFromCharContext( c, run, from, TRUE );
    r->top = 0;
    r->right = ME_PointFromCharContext( c, run, to, TRUE );
    r->bottom = cy;
    return;
}
