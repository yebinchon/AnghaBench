
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int IConnectionPointContainer_iface; } ;
struct TYPE_7__ {int IProvideClassInfo_iface; int IObjectSafety_iface; int IOleContainer_iface; int IObjectWithSite_iface; int IPersistHistory_iface; int ISupportErrorInfo_iface; int IHTMLDocument2_iface; int IPersistStreamInit_iface; TYPE_1__ cp_container; int IHlinkTarget_iface; int IOleControl_iface; int IOleCommandTarget_iface; int IServiceProvider_iface; int IOleInPlaceObjectWindowless_iface; int IOleInPlaceActiveObject_iface; int IViewObjectEx_iface; int IOleDocumentView_iface; int IOleDocument_iface; int IOleObject_iface; int IMonikerProp_iface; int IPersistFile_iface; int IPersistMoniker_iface; int IHTMLDocument7_iface; int IHTMLDocument6_iface; int IHTMLDocument5_iface; int IHTMLDocument4_iface; int IHTMLDocument3_iface; int IDispatchEx_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLDocument ;
typedef int BOOL ;


 int CLSID_CMarkup ;
 int DIID_DispHTMLDocument ;
 int FALSE ;
 int FIXME (char*,TYPE_2__*,void**) ;
 int IID_IConnectionPointContainer ;
 int IID_IDispatch ;
 int IID_IDispatchEx ;
 int IID_IExternalConnection ;
 int IID_IHTMLDocument ;
 int IID_IHTMLDocument2 ;
 int IID_IHTMLDocument3 ;
 int IID_IHTMLDocument4 ;
 int IID_IHTMLDocument5 ;
 int IID_IHTMLDocument6 ;
 int IID_IHTMLDocument7 ;
 int IID_IHlinkTarget ;
 int IID_IMarshal ;
 int IID_IMonikerProp ;
 int IID_IObjectSafety ;
 int IID_IObjectWithSite ;
 int IID_IOleCommandTarget ;
 int IID_IOleContainer ;
 int IID_IOleControl ;
 int IID_IOleDocument ;
 int IID_IOleDocumentView ;
 int IID_IOleInPlaceActiveObject ;
 int IID_IOleInPlaceObject ;
 int IID_IOleInPlaceObjectWindowless ;
 int IID_IOleObject ;
 int IID_IOleWindow ;
 int IID_IPersist ;
 int IID_IPersistFile ;
 int IID_IPersistHistory ;
 int IID_IPersistMoniker ;
 int IID_IPersistPropertyBag ;
 int IID_IPersistStreamInit ;
 int IID_IProvideClassInfo ;
 int IID_IRunnableObject ;
 int IID_IServiceProvider ;
 int IID_IStdMarshalInfo ;
 int IID_ISupportErrorInfo ;
 int IID_IUnknown ;
 int IID_IViewObject ;
 int IID_IViewObject2 ;
 int IID_IViewObjectEx ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int TRACE (char*,TYPE_2__*,void**) ;
 int TRUE ;

__attribute__((used)) static BOOL htmldoc_qi(HTMLDocument *This, REFIID riid, void **ppv)
{
    *ppv = ((void*)0);

    if(IsEqualGUID(&IID_IUnknown, riid))
        *ppv = &This->IHTMLDocument2_iface;
    else if(IsEqualGUID(&IID_IDispatch, riid))
        *ppv = &This->IDispatchEx_iface;
    else if(IsEqualGUID(&IID_IDispatchEx, riid))
        *ppv = &This->IDispatchEx_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument, riid))
        *ppv = &This->IHTMLDocument2_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument2, riid))
        *ppv = &This->IHTMLDocument2_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument3, riid))
        *ppv = &This->IHTMLDocument3_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument4, riid))
        *ppv = &This->IHTMLDocument4_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument5, riid))
        *ppv = &This->IHTMLDocument5_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument6, riid))
        *ppv = &This->IHTMLDocument6_iface;
    else if(IsEqualGUID(&IID_IHTMLDocument7, riid))
        *ppv = &This->IHTMLDocument7_iface;
    else if(IsEqualGUID(&IID_IPersist, riid))
        *ppv = &This->IPersistFile_iface;
    else if(IsEqualGUID(&IID_IPersistMoniker, riid))
        *ppv = &This->IPersistMoniker_iface;
    else if(IsEqualGUID(&IID_IPersistFile, riid))
        *ppv = &This->IPersistFile_iface;
    else if(IsEqualGUID(&IID_IMonikerProp, riid))
        *ppv = &This->IMonikerProp_iface;
    else if(IsEqualGUID(&IID_IOleObject, riid))
        *ppv = &This->IOleObject_iface;
    else if(IsEqualGUID(&IID_IOleDocument, riid))
        *ppv = &This->IOleDocument_iface;
    else if(IsEqualGUID(&IID_IOleDocumentView, riid))
        *ppv = &This->IOleDocumentView_iface;
    else if(IsEqualGUID(&IID_IOleInPlaceActiveObject, riid))
        *ppv = &This->IOleInPlaceActiveObject_iface;
    else if(IsEqualGUID(&IID_IViewObject, riid))
        *ppv = &This->IViewObjectEx_iface;
    else if(IsEqualGUID(&IID_IViewObject2, riid))
        *ppv = &This->IViewObjectEx_iface;
    else if(IsEqualGUID(&IID_IViewObjectEx, riid))
        *ppv = &This->IViewObjectEx_iface;
    else if(IsEqualGUID(&IID_IOleWindow, riid))
        *ppv = &This->IOleInPlaceActiveObject_iface;
    else if(IsEqualGUID(&IID_IOleInPlaceObject, riid))
        *ppv = &This->IOleInPlaceObjectWindowless_iface;
    else if(IsEqualGUID(&IID_IOleInPlaceObjectWindowless, riid))
        *ppv = &This->IOleInPlaceObjectWindowless_iface;
    else if(IsEqualGUID(&IID_IServiceProvider, riid))
        *ppv = &This->IServiceProvider_iface;
    else if(IsEqualGUID(&IID_IOleCommandTarget, riid))
        *ppv = &This->IOleCommandTarget_iface;
    else if(IsEqualGUID(&IID_IOleControl, riid))
        *ppv = &This->IOleControl_iface;
    else if(IsEqualGUID(&IID_IHlinkTarget, riid))
        *ppv = &This->IHlinkTarget_iface;
    else if(IsEqualGUID(&IID_IConnectionPointContainer, riid))
        *ppv = &This->cp_container.IConnectionPointContainer_iface;
    else if(IsEqualGUID(&IID_IPersistStreamInit, riid))
        *ppv = &This->IPersistStreamInit_iface;
    else if(IsEqualGUID(&DIID_DispHTMLDocument, riid))
        *ppv = &This->IHTMLDocument2_iface;
    else if(IsEqualGUID(&IID_ISupportErrorInfo, riid))
        *ppv = &This->ISupportErrorInfo_iface;
    else if(IsEqualGUID(&IID_IPersistHistory, riid))
        *ppv = &This->IPersistHistory_iface;
    else if(IsEqualGUID(&IID_IObjectWithSite, riid))
        *ppv = &This->IObjectWithSite_iface;
    else if(IsEqualGUID(&IID_IOleContainer, riid))
        *ppv = &This->IOleContainer_iface;
    else if(IsEqualGUID(&IID_IObjectSafety, riid))
        *ppv = &This->IObjectSafety_iface;
    else if(IsEqualGUID(&IID_IProvideClassInfo, riid))
        *ppv = &This->IProvideClassInfo_iface;
    else if(IsEqualGUID(&CLSID_CMarkup, riid)) {
        FIXME("(%p)->(CLSID_CMarkup %p)\n", This, ppv);
        *ppv = ((void*)0);
    }else if(IsEqualGUID(&IID_IRunnableObject, riid)) {
        TRACE("(%p)->(IID_IRunnableObject %p) returning NULL\n", This, ppv);
        *ppv = ((void*)0);
    }else if(IsEqualGUID(&IID_IPersistPropertyBag, riid)) {
        TRACE("(%p)->(IID_IPersistPropertyBag %p) returning NULL\n", This, ppv);
        *ppv = ((void*)0);
    }else if(IsEqualGUID(&IID_IMarshal, riid)) {
        TRACE("(%p)->(IID_IMarshal %p) returning NULL\n", This, ppv);
        *ppv = ((void*)0);
    }else if(IsEqualGUID(&IID_IExternalConnection, riid)) {
        TRACE("(%p)->(IID_IExternalConnection %p) returning NULL\n", This, ppv);
        *ppv = ((void*)0);
    }else if(IsEqualGUID(&IID_IStdMarshalInfo, riid)) {
        TRACE("(%p)->(IID_IStdMarshalInfo %p) returning NULL\n", This, ppv);
        *ppv = ((void*)0);
    }else {
        return FALSE;
    }

    if(*ppv)
        IUnknown_AddRef((IUnknown*)*ppv);
    return TRUE;
}
