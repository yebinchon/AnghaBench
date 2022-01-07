
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct para_num {int * text; int * style; } ;


 int ME_DestroyString (int *) ;
 int ME_ReleaseStyle (int *) ;

void para_num_clear( struct para_num *pn )
{
    if (pn->style)
    {
        ME_ReleaseStyle( pn->style );
        pn->style = ((void*)0);
    }
    ME_DestroyString( pn->text );
    pn->text = ((void*)0);
}
