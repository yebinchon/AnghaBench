
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filter_flags; int * filter_pattern; int right; int hwnd; int left; } ;
typedef TYPE_1__ ChildWnd ;


 int IDW_HEADER_LEFT ;
 int IDW_HEADER_RIGHT ;
 int IDW_TREE_LEFT ;
 int IDW_TREE_RIGHT ;
 int TF_ALL ;
 int create_tree_window (int ,int *,int ,int ,int *,int ) ;

__attribute__((used)) static void InitChildWindow(ChildWnd* child)
{
 create_tree_window(child->hwnd, &child->left, IDW_TREE_LEFT, IDW_HEADER_LEFT, ((void*)0), TF_ALL);
 create_tree_window(child->hwnd, &child->right, IDW_TREE_RIGHT, IDW_HEADER_RIGHT, child->filter_pattern, child->filter_flags);
}
