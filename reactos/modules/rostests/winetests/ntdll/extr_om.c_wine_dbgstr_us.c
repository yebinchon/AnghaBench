
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int Length; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef char* LPCSTR ;


 char* wine_dbgstr_wn (int ,int) ;

__attribute__((used)) static LPCSTR wine_dbgstr_us( const UNICODE_STRING *us )
{
    if (!us) return "(null)";
    return wine_dbgstr_wn(us->Buffer, us->Length / sizeof(WCHAR));
}
