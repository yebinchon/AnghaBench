
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int description; int mime_type; } ;
typedef TYPE_1__ mpg123_picture ;


 int free (int *) ;
 int mpg123_free_string (int *) ;

__attribute__((used)) static void free_mpg123_picture(mpg123_picture * pic)
{
 mpg123_free_string(&pic->mime_type);
 mpg123_free_string(&pic->description);
 if (pic->data != ((void*)0))
  free(pic->data);
}
