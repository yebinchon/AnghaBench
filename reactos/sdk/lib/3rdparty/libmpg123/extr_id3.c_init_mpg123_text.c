
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* lang; scalar_t__* id; int description; int text; } ;
typedef TYPE_1__ mpg123_text ;


 int mpg123_init_string (int *) ;

__attribute__((used)) static void init_mpg123_text(mpg123_text *txt)
{
 mpg123_init_string(&txt->text);
 mpg123_init_string(&txt->description);
 txt->id[0] = 0;
 txt->id[1] = 0;
 txt->id[2] = 0;
 txt->id[3] = 0;
 txt->lang[0] = 0;
 txt->lang[1] = 0;
 txt->lang[2] = 0;
}
