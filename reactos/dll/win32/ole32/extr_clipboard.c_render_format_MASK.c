#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cfFormat; int tymed; } ;
typedef  TYPE_1__* LPFORMATETC ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPBRD_E_CANT_SET ; 
 int /*<<< orphan*/  DV_E_FORMATETC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int TYMED_ENHMF ; 
 int TYMED_GDI ; 
 int TYMED_HGLOBAL ; 
 int TYMED_ISTORAGE ; 
 int TYMED_ISTREAM ; 
 int TYMED_MFPICT ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ embed_source_clipboard_format ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC14(IDataObject *data, LPFORMATETC fmt)
{
    HANDLE clip_data = NULL;  /* HGLOBAL unless otherwise specified */
    HRESULT hr;

    /* Embed source hack */
    if(fmt->cfFormat == embed_source_clipboard_format)
    {
        return FUNC13(data, fmt);
    }

    if(fmt->tymed & TYMED_ISTORAGE)
    {
        hr = FUNC11(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_ISTREAM)
    {
        hr = FUNC12(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_HGLOBAL)
    {
        hr = FUNC9(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_ENHMF)
    {
        hr = FUNC8(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_MFPICT)
    {
        /* Returns global handle to METAFILEPICT, containing a copied HMETAFILE */
        hr = FUNC10(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_GDI)
    {
        /* Returns HBITMAP not HGLOBAL */
        hr = FUNC7(data, fmt, (HBITMAP *)&clip_data);
    }
    else
    {
        FUNC1("Unhandled tymed %x\n", fmt->tymed);
        hr = DV_E_FORMATETC;
    }

    if(FUNC3(hr))
    {
        if ( !FUNC4(fmt->cfFormat, clip_data) )
        {
            FUNC5("() : Failed to set rendered clipboard data into clipboard!\n");
            if(fmt->tymed & TYMED_MFPICT)
                FUNC6(clip_data);
            else if(fmt->tymed & TYMED_GDI)
                FUNC0(clip_data);
            else
                FUNC2(clip_data);
            hr = CLIPBRD_E_CANT_SET;
        }
    }

    return hr;
}