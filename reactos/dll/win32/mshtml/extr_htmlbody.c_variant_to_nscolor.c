
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsAString ;
typedef char WCHAR ;
typedef int VARIANT ;
typedef int PRUnichar ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int TRUE ;


 int * V_BSTR (int const*) ;
 int V_I4 (int const*) ;
 int V_VT (int const*) ;
 int debugstr_variant (int const*) ;
 int nsAString_Init (int *,int *) ;
 int wsprintfW (int *,char const*,int ) ;

BOOL variant_to_nscolor(const VARIANT *v, nsAString *nsstr)
{
    switch(V_VT(v)) {
    case 129:
        nsAString_Init(nsstr, V_BSTR(v));
        return TRUE;

    case 128: {
        PRUnichar buf[10];
        static const WCHAR formatW[] = {'#','%','x',0};

        wsprintfW(buf, formatW, V_I4(v));
        nsAString_Init(nsstr, buf);
        return TRUE;
    }

    default:
        FIXME("invalid color %s\n", debugstr_variant(v));
    }

    return FALSE;

}
