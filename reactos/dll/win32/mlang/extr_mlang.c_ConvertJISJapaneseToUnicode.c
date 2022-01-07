
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LPWSTR ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int CHAR ;


 scalar_t__ ConvertJIS2SJIS (int ,int ,int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ MultiByteToWideChar (int,int ,int *,scalar_t__,int ,int ) ;
 int TRACE (char*,int ) ;
 int debugstr_an (int *,scalar_t__) ;

__attribute__((used)) static UINT ConvertJISJapaneseToUnicode(LPCSTR input, DWORD count,
                                        LPWSTR output, DWORD out_count)
{
    CHAR *sjis_string;
    UINT rc = 0;
    sjis_string = HeapAlloc(GetProcessHeap(),0,count);
    rc = ConvertJIS2SJIS(input,count,sjis_string);
    if (rc)
    {
        TRACE("%s\n",debugstr_an(sjis_string,rc));
        if (output)
            rc = MultiByteToWideChar(932,0,sjis_string,rc,output,out_count);
        else
            rc = MultiByteToWideChar(932,0,sjis_string,rc,0,0);
    }
    HeapFree(GetProcessHeap(),0,sjis_string);
    return rc;

}
