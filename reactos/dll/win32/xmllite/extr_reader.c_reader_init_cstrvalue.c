
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * str; int len; scalar_t__ start; } ;
typedef TYPE_1__ strval ;
typedef int WCHAR ;
typedef int UINT ;



__attribute__((used)) static inline void reader_init_cstrvalue(WCHAR *str, UINT len, strval *v)
{
    v->start = 0;
    v->len = len;
    v->str = str;
}
