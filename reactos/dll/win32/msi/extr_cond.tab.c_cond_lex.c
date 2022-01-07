
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_str {int dummy; } ;
typedef int COND_input ;


 int COND_GetOne (struct cond_str*,int *) ;
 int COND_SPACE ;

__attribute__((used)) static int cond_lex( void *COND_lval, COND_input *cond )
{
    int rc;
    struct cond_str *str = COND_lval;

    do {
        rc = COND_GetOne( str, cond );
    } while (rc == COND_SPACE);

    return rc;
}
