
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bottom; int top; scalar_t__ right; int left; } ;
struct TYPE_5__ {TYPE_1__ format_rect; } ;
typedef int * LPINT ;
typedef TYPE_2__ EDITSTATE ;


 int max (int ,int ) ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static void EDIT_ConfinePoint(const EDITSTATE *es, LPINT x, LPINT y)
{
 *x = min(max(*x, es->format_rect.left), es->format_rect.right - 1);
 *y = min(max(*y, es->format_rect.top), es->format_rect.bottom - 1);
}
