
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;
typedef int list ;


 int free (char*) ;
 int strcmp (char*,char const* const) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static uint64_t qsv_params_get_value(const char *const *text,
                                     const int *list,
                                     size_t size, char *sel)
{
    size_t result = 0;

    if (unlikely(!sel))
        return list[0];

    size /= sizeof(list[0]);
    for (size_t i = 0; i < size; i++)
        if (!strcmp(sel, text[i])) {
            result = i;
            break;
        }


    free(sel);

    return list[result];
}
