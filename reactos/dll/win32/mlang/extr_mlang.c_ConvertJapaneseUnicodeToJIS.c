
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef int INT ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;


 scalar_t__ ConvertSJIS2JIS (int *,int ,int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,int ) ;
 int WideCharToMultiByte (int,int ,int ,scalar_t__,int *,int ,int *,int *) ;
 int debugstr_an (int *,int ) ;

__attribute__((used)) static UINT ConvertJapaneseUnicodeToJIS(LPCWSTR input, DWORD count,
                                        LPSTR output, DWORD out_count)
{
    CHAR *sjis_string;
    INT len;
    UINT rc = 0;

    len = WideCharToMultiByte(932,0,input,count,0,0,((void*)0),((void*)0));
    sjis_string = HeapAlloc(GetProcessHeap(),0,len);
    WideCharToMultiByte(932,0,input,count,sjis_string,len,((void*)0),((void*)0));
    TRACE("%s\n",debugstr_an(sjis_string,len));

    rc = ConvertSJIS2JIS(sjis_string, len, ((void*)0));
    if (out_count >= rc)
    {
        ConvertSJIS2JIS(sjis_string, len, output);
    }
    HeapFree(GetProcessHeap(),0,sjis_string);
    return rc;

}
