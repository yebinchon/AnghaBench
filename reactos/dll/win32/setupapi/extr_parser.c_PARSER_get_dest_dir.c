
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {int Inf; } ;
typedef int INT ;
typedef TYPE_1__ INFCONTEXT ;
typedef unsigned int DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,unsigned int) ;
 int SetupGetIntField (TYPE_1__*,int,int *) ;
 int SetupGetStringFieldW (TYPE_1__*,int,char*,unsigned int,unsigned int*) ;
 char* get_dirid_subst (int ,int ,unsigned int*) ;
 int memcpy (char*,char const*,unsigned int) ;

WCHAR *PARSER_get_dest_dir( INFCONTEXT *context )
{
    const WCHAR *dir;
    WCHAR *ptr, *ret;
    INT dirid;
    unsigned int len1;
    DWORD len2;

    if (!SetupGetIntField( context, 1, &dirid )) return ((void*)0);
    if (!(dir = get_dirid_subst( context->Inf, dirid, &len1 ))) return ((void*)0);
    if (!SetupGetStringFieldW( context, 2, ((void*)0), 0, &len2 )) len2 = 0;
    if (!(ret = HeapAlloc( GetProcessHeap(), 0, (len1+len2+1) * sizeof(WCHAR) ))) return ((void*)0);
    memcpy( ret, dir, len1 * sizeof(WCHAR) );
    ptr = ret + len1;
    if (len2 && ptr > ret && ptr[-1] != '\\') *ptr++ = '\\';
    if (!SetupGetStringFieldW( context, 2, ptr, len2, ((void*)0) )) *ptr = 0;
    return ret;
}
