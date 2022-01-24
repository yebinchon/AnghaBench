#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ClientSite ; 
 int /*<<< orphan*/  Dispatch ; 
 int /*<<< orphan*/  DocHostUIHandler ; 
 int /*<<< orphan*/  DocumentSite ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IDocHostShowUI ; 
 int /*<<< orphan*/  IID_IDocHostUIHandler ; 
 int /*<<< orphan*/  IID_IDocHostUIHandler2 ; 
 int /*<<< orphan*/  IID_IDocHostUIHandlerPriv ; 
 int /*<<< orphan*/  IID_IOleClientSite ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  IID_IOleContainer ; 
 int /*<<< orphan*/  IID_IOleControlSite ; 
 int /*<<< orphan*/  IID_IOleDocumentSite ; 
 int /*<<< orphan*/  IID_IOleInPlaceSite ; 
 int /*<<< orphan*/  IID_IOleInPlaceSiteEx ; 
 int /*<<< orphan*/  IID_IOleInPlaceSiteWindowless ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 int /*<<< orphan*/  IID_IProxyManager ; 
 int /*<<< orphan*/  IID_IRenMailEditor ; 
 int /*<<< orphan*/  IID_IServiceProvider ; 
 int /*<<< orphan*/  IID_IThumbnailView ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_unk1 ; 
 int /*<<< orphan*/  IID_unk4 ; 
 int /*<<< orphan*/  IID_unk5 ; 
 int /*<<< orphan*/  InPlaceSiteWindowless ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OleCommandTarget ; 
 int /*<<< orphan*/  OleContainer ; 
 int /*<<< orphan*/  OleControlSite ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  ServiceProvider ; 
 scalar_t__ ipsex ; 
 scalar_t__ ipsw ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(REFIID riid, void **ppv)
{
    *ppv = NULL;

    if(FUNC0(&IID_IUnknown, riid) || FUNC0(&IID_IOleClientSite, riid))
        *ppv = &ClientSite;
    else if(FUNC0(&IID_IOleDocumentSite, riid))
        *ppv = &DocumentSite;
    else if(FUNC0(&IID_IDocHostUIHandler, riid) || FUNC0(&IID_IDocHostUIHandler2, riid))
        *ppv = &DocHostUIHandler;
    else if(FUNC0(&IID_IOleContainer, riid))
        *ppv = &OleContainer;
    else if(FUNC0(&IID_IOleWindow, riid) || FUNC0(&IID_IOleInPlaceSite, riid))
        *ppv = &InPlaceSiteWindowless;
    else if(FUNC0(&IID_IOleCommandTarget , riid))
        *ppv = &OleCommandTarget;
    else if(FUNC0(&IID_IDispatch, riid))
        *ppv = &Dispatch;
    else if(FUNC0(&IID_IServiceProvider, riid))
        *ppv = &ServiceProvider;
    else if(FUNC0(&IID_IOleInPlaceSiteEx, riid))
        *ppv = ipsex ? &InPlaceSiteWindowless : NULL;
    else if(FUNC0(&IID_IOleInPlaceSiteWindowless, riid))
        *ppv = ipsw ? &InPlaceSiteWindowless : NULL;
    else if(FUNC0(&IID_IOleControlSite, riid))
        *ppv = &OleControlSite;
    else if(FUNC0(&IID_IDocHostShowUI, riid))
        return E_NOINTERFACE; /* TODO */
    else if(FUNC0(&IID_IProxyManager, riid))
        return E_NOINTERFACE; /* ? */
    else if(FUNC0(&IID_unk1, riid))
        return E_NOINTERFACE; /* HTMLWindow2 ? */
    else if(FUNC0(&IID_IThumbnailView, riid))
        return E_NOINTERFACE; /* ? */
    else if(FUNC0(&IID_IRenMailEditor, riid))
        return E_NOINTERFACE; /* ? */
    else if(FUNC0(&IID_unk4, riid))
        return E_NOINTERFACE; /* ? */
    else if(FUNC0(&IID_unk5, riid))
        return E_NOINTERFACE; /* IE10 */
    else if(FUNC0(&IID_IDocHostUIHandlerPriv, riid))
        return E_NOINTERFACE; /* ? */
    else
        FUNC1("QI(%s)\n", FUNC2(riid));

    if(*ppv)
        return S_OK;
    return E_NOINTERFACE;
}