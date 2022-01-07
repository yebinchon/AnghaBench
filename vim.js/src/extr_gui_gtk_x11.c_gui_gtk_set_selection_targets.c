
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ gtk_sel_atom; } ;
struct TYPE_7__ {int drawarea; } ;
struct TYPE_6__ {scalar_t__ info; } ;
typedef TYPE_1__ GtkTargetEntry ;
typedef int GdkAtom ;


 scalar_t__ GDK_SELECTION_PRIMARY ;
 int N_SELECTION_TARGETS ;
 scalar_t__ TARGET_HTML ;
 int clip_html ;
 TYPE_5__ clip_plus ;
 int gtk_selection_add_targets (int ,int ,TYPE_1__*,int) ;
 int gtk_selection_clear_targets (int ,int ) ;
 TYPE_3__ gui ;
 TYPE_1__* selection_targets ;

void
gui_gtk_set_selection_targets(void)
{
    int i, j = 0;
    int n_targets = N_SELECTION_TARGETS;
    GtkTargetEntry targets[N_SELECTION_TARGETS];

    for (i = 0; i < (int)N_SELECTION_TARGETS; ++i)
    {



 if (!clip_html && selection_targets[i].info == TARGET_HTML)
     n_targets--;
 else
     targets[j++] = selection_targets[i];
    }

    gtk_selection_clear_targets(gui.drawarea, (GdkAtom)GDK_SELECTION_PRIMARY);
    gtk_selection_clear_targets(gui.drawarea, (GdkAtom)clip_plus.gtk_sel_atom);
    gtk_selection_add_targets(gui.drawarea,
         (GdkAtom)GDK_SELECTION_PRIMARY,
         targets, n_targets);
    gtk_selection_add_targets(gui.drawarea,
         (GdkAtom)clip_plus.gtk_sel_atom,
         targets, n_targets);
}
