
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_str {int len; scalar_t__ data; } ;
typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int COND_input ;


 int TRACE (char*,int ) ;
 scalar_t__* cond_alloc (int *,int) ;
 int debugstr_w (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;

__attribute__((used)) static LPWSTR COND_GetLiteral( COND_input *cond, const struct cond_str *str )
{
    LPWSTR ret;

    ret = cond_alloc( cond, (str->len-1) * sizeof (WCHAR) );
    if( ret )
    {
        memcpy( ret, str->data+1, (str->len-2) * sizeof(WCHAR) );
        ret[str->len - 2]=0;
    }
    TRACE("Got literal %s\n",debugstr_w(ret));
    return ret;
}
