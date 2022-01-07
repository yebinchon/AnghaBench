
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPWSTR ;
typedef int * LPCSTR ;
typedef int DWORD ;
typedef int CHAR ;


 int CP_ACP ;
 int ConvertJIS2SJIS (int *,int ,int *) ;
 int DetectJapaneseCode (int *,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,int *) ;
 int MultiByteToWideChar (int,int ,int *,int ,int ,int ) ;
 int TRACE (char*,int) ;
 int debugstr_an (int *,int ) ;

__attribute__((used)) static UINT ConvertUnknownJapaneseToUnicode(LPCSTR input, DWORD count,
                                            LPWSTR output, DWORD out_count)
{
    CHAR *sjis_string;
    UINT rc = 0;
    int code = DetectJapaneseCode(input,count);
    TRACE("Japanese code %i\n",code);

    switch (code)
    {
    case 0:
        if (output)
            rc = MultiByteToWideChar(CP_ACP,0,input,count,output,out_count);
        else
            rc = MultiByteToWideChar(CP_ACP,0,input,count,0,0);
        break;

    case 932:
        if (output)
            rc = MultiByteToWideChar(932,0,input,count,output,out_count);
        else
            rc = MultiByteToWideChar(932,0,input,count,0,0);
        break;

    case 51932:
        if (output)
            rc = MultiByteToWideChar(20932,0,input,count,output,out_count);
        else
            rc = MultiByteToWideChar(20932,0,input,count,0,0);
        break;

    case 50220:
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
        break;
    }
    return rc;
}
