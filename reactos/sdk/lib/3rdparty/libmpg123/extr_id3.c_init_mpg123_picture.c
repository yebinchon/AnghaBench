
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; scalar_t__ size; scalar_t__ type; int description; int mime_type; } ;
typedef TYPE_1__ mpg123_picture ;


 int mpg123_init_string (int *) ;

__attribute__((used)) static void init_mpg123_picture(mpg123_picture *pic)
{
 mpg123_init_string(&pic->mime_type);
 mpg123_init_string(&pic->description);
 pic->type = 0;
 pic->size = 0;
 pic->data = ((void*)0);
}
