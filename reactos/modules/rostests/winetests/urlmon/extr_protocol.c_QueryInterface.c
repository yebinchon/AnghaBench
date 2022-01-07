
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef int REFIID ;
typedef TYPE_2__ IID ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 TYPE_2__ const IID_IInternetProtocolSink ;
 TYPE_2__ const IID_IServiceProvider ;
 TYPE_2__ const IID_IUnknown ;
 TYPE_2__ const IID_IUriContainer ;
 scalar_t__ IsEqualGUID (TYPE_2__ const*,int ) ;
 int S_OK ;
 int ok (int ,char*,int ) ;
 int protocol_sink ;
 int service_provider ;
 int wine_dbgstr_guid (int ) ;

__attribute__((used)) static HRESULT QueryInterface(REFIID riid, void **ppv)
{
    static const IID IID_undocumented = {0x58DFC7D0,0x5381,0x43E5,{0x9D,0x72,0x4C,0xDD,0xE4,0xCB,0x0F,0x1A}};
    static const IID IID_undocumentedIE10 = {0xc28722e5,0xbc1a,0x4c55,{0xa6,0x8d,0x33,0x21,0x9f,0x69,0x89,0x10}};

    *ppv = ((void*)0);

    if(IsEqualGUID(&IID_IUnknown, riid) || IsEqualGUID(&IID_IInternetProtocolSink, riid))
        *ppv = &protocol_sink;
    if(IsEqualGUID(&IID_IServiceProvider, riid))
        *ppv = &service_provider;
    if(IsEqualGUID(&IID_IUriContainer, riid))
        return E_NOINTERFACE;


    if(IsEqualGUID(&IID_undocumented, riid))
        return E_NOINTERFACE;

    if(IsEqualGUID(&IID_undocumentedIE10, riid))
        return E_NOINTERFACE;

    if(*ppv)
        return S_OK;

    ok(0, "unexpected call %s\n", wine_dbgstr_guid(riid));
    return E_NOINTERFACE;
}
