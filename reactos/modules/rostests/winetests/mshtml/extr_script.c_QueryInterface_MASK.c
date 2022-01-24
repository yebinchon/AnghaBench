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
 int /*<<< orphan*/  DocHostUIHandler ; 
 int /*<<< orphan*/  DocumentSite ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IDocHostUIHandler ; 
 int /*<<< orphan*/  IID_IDocHostUIHandler2 ; 
 int /*<<< orphan*/  IID_IOleClientSite ; 
 int /*<<< orphan*/  IID_IOleDocumentSite ; 
 int /*<<< orphan*/  IID_IOleInPlaceSite ; 
 int /*<<< orphan*/  IID_IOleWindow ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  InPlaceSite ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC1(REFIID riid, void **ppv)
{
    *ppv = NULL;

    if(FUNC0(&IID_IUnknown, riid) || FUNC0(&IID_IOleClientSite, riid))
        *ppv = &ClientSite;
    else if(FUNC0(&IID_IOleDocumentSite, riid))
        *ppv = &DocumentSite;
    else if(FUNC0(&IID_IOleWindow, riid) || FUNC0(&IID_IOleInPlaceSite, riid))
        *ppv = &InPlaceSite;
    else if(FUNC0(&IID_IDocHostUIHandler, riid) || FUNC0(&IID_IDocHostUIHandler2, riid))
        *ppv = &DocHostUIHandler;

    return *ppv ? S_OK : E_NOINTERFACE;
}