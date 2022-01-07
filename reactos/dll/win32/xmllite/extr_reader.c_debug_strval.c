
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlreader ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ strval ;


 char const* debugstr_wn (int ,int ) ;
 int reader_get_strptr (int const*,TYPE_1__ const*) ;

__attribute__((used)) static inline const char* debug_strval(const xmlreader *reader, const strval *v)
{
    return debugstr_wn(reader_get_strptr(reader, v), v->len);
}
