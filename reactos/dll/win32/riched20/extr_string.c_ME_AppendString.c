
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int nLen; } ;
typedef TYPE_1__ ME_String ;
typedef int BOOL ;


 int ME_InsertString (TYPE_1__*,int ,int const*,int) ;

BOOL ME_AppendString(ME_String *s, const WCHAR *append, int len)
{
    return ME_InsertString( s, s->nLen, append, len );
}
