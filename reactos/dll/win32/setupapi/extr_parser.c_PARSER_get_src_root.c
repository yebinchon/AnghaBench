
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int HINF ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,unsigned int) ;
 scalar_t__* get_inf_dir (int ,unsigned int*) ;
 int memcpy (scalar_t__*,scalar_t__ const*,unsigned int) ;

WCHAR *PARSER_get_src_root( HINF hinf )
{
    unsigned int len;
    const WCHAR *dir = get_inf_dir( hinf, &len );
    WCHAR *ret = HeapAlloc( GetProcessHeap(), 0, (len + 1) * sizeof(WCHAR) );
    if (ret)
    {
        memcpy( ret, dir, len * sizeof(WCHAR) );
        ret[len] = 0;
    }
    return ret;
}
