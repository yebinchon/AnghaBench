
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text_style_t ;


 int STYLE_FULLY_SET ;
 int * text_style_Create (int ) ;

text_style_t *text_style_New( void )
{
    return text_style_Create( STYLE_FULLY_SET );
}
