
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int description; int text; } ;
typedef TYPE_1__ mpg123_text ;


 int mpg123_free_string (int *) ;

__attribute__((used)) static void free_mpg123_text(mpg123_text *txt)
{
 mpg123_free_string(&txt->text);
 mpg123_free_string(&txt->description);
}
