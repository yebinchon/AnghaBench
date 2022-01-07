
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct complex_expr {scalar_t__ op; int right; int left; } ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIWHEREVIEW ;
typedef int MSIRECORD ;
typedef int INT ;


 scalar_t__ ERROR_CONTINUE ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ OP_EQ ;
 scalar_t__ OP_NE ;
 scalar_t__ STRING_evaluate (int *,scalar_t__ const*,int ,int const*,int const**) ;
 int TRUE ;
 int strcmpW (int const*,int const*) ;

__attribute__((used)) static UINT STRCMP_Evaluate( MSIWHEREVIEW *wv, const UINT rows[], const struct complex_expr *expr,
                             INT *val, const MSIRECORD *record )
{
    int sr;
    const WCHAR *l_str, *r_str;
    UINT r;

    *val = TRUE;
    r = STRING_evaluate(wv, rows, expr->left, record, &l_str);
    if (r == ERROR_CONTINUE)
        return r;
    r = STRING_evaluate(wv, rows, expr->right, record, &r_str);
    if (r == ERROR_CONTINUE)
        return r;

    if( l_str == r_str ||
        ((!l_str || !*l_str) && (!r_str || !*r_str)) )
        sr = 0;
    else if( l_str && ! r_str )
        sr = 1;
    else if( r_str && ! l_str )
        sr = -1;
    else
        sr = strcmpW( l_str, r_str );

    *val = ( expr->op == OP_EQ && ( sr == 0 ) ) ||
           ( expr->op == OP_NE && ( sr != 0 ) );

    return ERROR_SUCCESS;
}
