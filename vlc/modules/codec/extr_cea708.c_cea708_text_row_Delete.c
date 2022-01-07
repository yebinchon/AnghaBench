
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cea708_text_row_t ;


 int free (int *) ;

__attribute__((used)) static void cea708_text_row_Delete( cea708_text_row_t *p_row )
{
    free( p_row );
}
