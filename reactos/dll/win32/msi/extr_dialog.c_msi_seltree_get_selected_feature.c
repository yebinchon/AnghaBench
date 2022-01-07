
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msi_selection_tree_info {int selected; } ;
struct TYPE_3__ {int hwnd; } ;
typedef TYPE_1__ msi_control ;
typedef int MSIFEATURE ;


 struct msi_selection_tree_info* GetPropW (int ,int ) ;
 int * msi_seltree_feature_from_item (int ,int ) ;
 int szButtonData ;

__attribute__((used)) static MSIFEATURE *msi_seltree_get_selected_feature( msi_control *control )
{
    struct msi_selection_tree_info *info = GetPropW( control->hwnd, szButtonData );
    return msi_seltree_feature_from_item( control->hwnd, info->selected );
}
