
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_14__ {TYPE_3__* pLibInfo; TYPE_2__* pTblDir; } ;
struct TYPE_13__ {int offset; int entry; int * str; } ;
struct TYPE_12__ {int string_list; } ;
struct TYPE_10__ {int length; int offset; } ;
struct TYPE_11__ {TYPE_1__ pStringtab; } ;
typedef TYPE_4__ TLBString ;
typedef TYPE_5__ TLBContext ;
typedef int INT16 ;
typedef int HRESULT ;


 int CP_ACP ;
 int DO_NOT_SEEK ;
 int E_UNEXPECTED ;
 int MB_ERR_INVALID_CHARS ;
 int MB_PRECOMPOSED ;
 int MSFT_Read (char*,int,TYPE_5__*,int ) ;
 int MSFT_ReadLEWords (int*,int,TYPE_5__*,int ) ;
 int MSFT_Seek (TYPE_5__*,int ) ;
 int MultiByteToWideChar (int ,int,char*,int,int *,int) ;
 int S_OK ;
 int * SysAllocStringByteLen (int *,int) ;
 void* heap_alloc (int) ;
 int heap_free (char*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static HRESULT MSFT_ReadAllStrings(TLBContext *pcx)
{
    char *string;
    INT16 len_str, len_piece;
    int offs = 0, lengthInChars;

    MSFT_Seek(pcx, pcx->pTblDir->pStringtab.offset);
    while (1) {
        TLBString *tlbstr;

        if (offs >= pcx->pTblDir->pStringtab.length)
            return S_OK;

        MSFT_ReadLEWords(&len_str, sizeof(INT16), pcx, DO_NOT_SEEK);
        len_piece = len_str + sizeof(INT16);
        if(len_piece % 4)
            len_piece = (len_piece + 4) & ~0x3;
        if(len_piece < 8)
            len_piece = 8;

        string = heap_alloc(len_piece + 1);
        MSFT_Read(string, len_piece - sizeof(INT16), pcx, DO_NOT_SEEK);
        string[len_str] = '\0';

        lengthInChars = MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED | MB_ERR_INVALID_CHARS,
                                            string, -1, ((void*)0), 0);
        if (!lengthInChars) {
            heap_free(string);
            return E_UNEXPECTED;
        }

        tlbstr = heap_alloc(sizeof(TLBString));

        tlbstr->offset = offs;
        tlbstr->str = SysAllocStringByteLen(((void*)0), lengthInChars * sizeof(WCHAR));
        MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, string, -1, tlbstr->str, lengthInChars);

        heap_free(string);

        list_add_tail(&pcx->pLibInfo->string_list, &tlbstr->entry);

        offs += len_piece;
    }
}
