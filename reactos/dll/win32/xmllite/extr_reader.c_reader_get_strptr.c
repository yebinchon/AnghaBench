
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlreader ;
struct TYPE_3__ {int start; int * str; } ;
typedef TYPE_1__ strval ;
typedef int WCHAR ;


 int * reader_get_ptr2 (int const*,int ) ;

__attribute__((used)) static inline WCHAR *reader_get_strptr(const xmlreader *reader, const strval *v)
{
    return v->str ? v->str : reader_get_ptr2(reader, v->start);
}
