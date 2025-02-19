
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct complex_expr {TYPE_1__* left; TYPE_2__* right; } ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef int BOOL ;


 scalar_t__ CIM_BOOLEAN ;
 scalar_t__ EXPR_BVAL ;
 scalar_t__ EXPR_PROPVAL ;
 scalar_t__ EXPR_SVAL ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline BOOL is_boolcmp( const struct complex_expr *expr, UINT ltype, UINT rtype )
{
    if (ltype == CIM_BOOLEAN && expr->left->type == EXPR_PROPVAL &&
        (expr->right->type == EXPR_SVAL || expr->right->type == EXPR_BVAL)) return TRUE;
    else if (rtype == CIM_BOOLEAN && expr->right->type == EXPR_PROPVAL &&
             (expr->left->type == EXPR_SVAL || expr->left->type == EXPR_BVAL)) return TRUE;
    return FALSE;
}
