
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlreader ;
struct TYPE_4__ {scalar_t__ str; } ;
typedef TYPE_1__ strval ;


 int reader_free (int *,scalar_t__) ;
 TYPE_1__ strval_empty ;

__attribute__((used)) static void reader_free_strvalued(xmlreader *reader, strval *v)
{
    if (v->str != strval_empty.str)
    {
        reader_free(reader, v->str);
        *v = strval_empty;
    }
}
