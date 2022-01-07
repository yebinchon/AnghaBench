
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string {scalar_t__ len; int * data; } ;


 int ASSERT (int) ;
 int nc_free (int *) ;
 int string_init (struct string*) ;

void
string_deinit(struct string *str)
{
    ASSERT((str->len == 0 && str->data == ((void*)0)) ||
           (str->len != 0 && str->data != ((void*)0)));

    if (str->data != ((void*)0)) {
        nc_free(str->data);
        string_init(str);
    }
}
