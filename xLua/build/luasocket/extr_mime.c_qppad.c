
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int luaL_Buffer ;
typedef size_t UC ;


 int EQCRLF ;
 scalar_t__ QP_PLAIN ;
 int luaL_addchar (int *,size_t) ;
 int luaL_addstring (int *,int ) ;
 scalar_t__* qpclass ;
 int qpquote (size_t,int *) ;

__attribute__((used)) static size_t qppad(UC *input, size_t size, luaL_Buffer *buffer)
{
    size_t i;
    for (i = 0; i < size; i++) {
        if (qpclass[input[i]] == QP_PLAIN) luaL_addchar(buffer, input[i]);
        else qpquote(input[i], buffer);
    }
    if (size > 0) luaL_addstring(buffer, EQCRLF);
    return 0;
}
