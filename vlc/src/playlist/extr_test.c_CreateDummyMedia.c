
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int asprintf (char**,char*,int) ;
 int free (char*) ;
 int * input_item_New (char*,char*) ;

__attribute__((used)) static input_item_t *
CreateDummyMedia(int num)
{
    char *url;
    char *name;

    int res = asprintf(&url, "vlc://item-%d", num);
    if (res == -1)
        return ((void*)0);

    res = asprintf(&name, "item-%d", num);
    if (res == -1)
        return ((void*)0);

    input_item_t *media = input_item_New(url, name);
    free(url);
    free(name);
    return media;
}
