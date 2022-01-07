
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsACString ;
typedef int WCHAR ;


 int CP_UTF8 ;
 int NS_ERROR_OUT_OF_MEMORY ;
 int NS_OK ;
 int TRACE (char*,int ) ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;
 int debugstr_wn (int const*,int) ;
 char* heap_alloc (int) ;
 int heap_free (char*) ;
 int nsACString_SetData (int *,char*) ;

__attribute__((used)) static nsresult return_wstr_nsacstr(nsACString *ret_str, const WCHAR *str, int len)
{
    char *stra;
    int lena;

    TRACE("returning %s\n", debugstr_wn(str, len));

    if(!*str) {
        nsACString_SetData(ret_str, "");
        return NS_OK;
    }

    lena = WideCharToMultiByte(CP_UTF8, 0, str, len, ((void*)0), 0, ((void*)0), ((void*)0));
    stra = heap_alloc(lena+1);
    if(!stra)
        return NS_ERROR_OUT_OF_MEMORY;

    WideCharToMultiByte(CP_UTF8, 0, str, len, stra, lena, ((void*)0), ((void*)0));
    stra[lena] = 0;

    nsACString_SetData(ret_str, stra);
    heap_free(stra);
    return NS_OK;
}
