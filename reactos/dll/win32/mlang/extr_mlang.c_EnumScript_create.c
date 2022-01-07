
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_10__ {int proportional_font; int fixed_font; int description; int family_codepage; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int total; TYPE_2__ IEnumScript_iface; TYPE_1__* script_info; scalar_t__ pos; } ;
struct TYPE_7__ {size_t ScriptId; int wszProportionalFont; int wszFixedWidthFont; int wszDescription; int uiCodePage; } ;
typedef int SCRIPTINFO ;
typedef int MLang_impl ;
typedef int LANGID ;
typedef TYPE_2__ IEnumScript ;
typedef int HRESULT ;
typedef TYPE_3__ EnumScript_impl ;
typedef int DWORD ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int CP_ACP ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int IEnumScript_vtbl ;
 int MAX_MIMEFACE_NAME ;
 int MAX_SCRIPT_NAME ;
 int MultiByteToWideChar (int ,int ,int ,int,int ,int ) ;
 int SCRIPTCONTF_SCRIPT_HIDE ;
 int SCRIPTCONTF_SCRIPT_SYSTEM ;
 int SCRIPTCONTF_SCRIPT_USER ;
 int S_OK ;
 int TRACE (char*,size_t,int,...) ;
 TYPE_4__* mlang_data ;

__attribute__((used)) static HRESULT EnumScript_create( MLang_impl* mlang, DWORD dwFlags,
                     LANGID LangId, IEnumScript** ppEnumScript )
{
    EnumScript_impl *es;
    UINT i;

    TRACE("%p, %08x, %04x, %p\n", mlang, dwFlags, LangId, ppEnumScript);

    if (!dwFlags)
        dwFlags = SCRIPTCONTF_SCRIPT_USER | SCRIPTCONTF_SCRIPT_HIDE | SCRIPTCONTF_SCRIPT_SYSTEM;

    es = HeapAlloc( GetProcessHeap(), 0, sizeof (EnumScript_impl) );
    es->IEnumScript_iface.lpVtbl = &IEnumScript_vtbl;
    es->ref = 1;
    es->pos = 0;

    es->total = ARRAY_SIZE(mlang_data) - 1;
    es->script_info = HeapAlloc(GetProcessHeap(), 0, sizeof(SCRIPTINFO) * es->total);

    for (i = 0; i < es->total; i++)
    {
        es->script_info[i].ScriptId = i;
        es->script_info[i].uiCodePage = mlang_data[i].family_codepage;
        MultiByteToWideChar(CP_ACP, 0, mlang_data[i].description, -1,
            es->script_info[i].wszDescription, MAX_SCRIPT_NAME);
        MultiByteToWideChar(CP_ACP, 0, mlang_data[i].fixed_font, -1,
            es->script_info[i].wszFixedWidthFont, MAX_MIMEFACE_NAME);
        MultiByteToWideChar(CP_ACP, 0, mlang_data[i].proportional_font, -1,
            es->script_info[i].wszProportionalFont, MAX_MIMEFACE_NAME);
    }

    TRACE("enumerated %d scripts with flags %08x\n", es->total, dwFlags);

    *ppEnumScript = &es->IEnumScript_iface;

    return S_OK;
}
