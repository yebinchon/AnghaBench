#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int vt; int /*<<< orphan*/  hreftype; int /*<<< orphan*/  lptdesc; } ;
struct TYPE_9__ {int typekind; int cbSizeInstance; TYPE_1__ tdescAlias; } ;
typedef  TYPE_1__ TYPEDESC ;
typedef  TYPE_2__ TYPEATTR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 unsigned char FC_ENUM32 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 unsigned short IsBasetype ; 
 unsigned short IsByValue ; 
 unsigned short IsSimpleRef ; 
 unsigned short MustFree ; 
 unsigned short MustSize ; 
 int /*<<< orphan*/  S_OK ; 
#define  TKIND_ALIAS 139 
#define  TKIND_ENUM 138 
#define  TKIND_RECORD 137 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
#define  VT_BSTR 136 
#define  VT_CARRAY 135 
#define  VT_CY 134 
#define  VT_DISPATCH 133 
#define  VT_PTR 132 
#define  VT_SAFEARRAY 131 
#define  VT_UNKNOWN 130 
#define  VT_USERDEFINED 129 
#define  VT_VARIANT 128 
 unsigned char FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,unsigned short*,unsigned short*,unsigned char*,TYPE_1__**) ; 

__attribute__((used)) static HRESULT FUNC8(ITypeInfo *typeinfo, TYPEDESC *tdesc, int is_in,
        int is_out, unsigned short *server_size, unsigned short *flags,
        unsigned char *basetype, TYPEDESC **tfs_tdesc)
{
    ITypeInfo *refinfo;
    HRESULT hr = S_OK;
    TYPEATTR *attr;

    *server_size = 0;
    *flags = MustSize;
    *basetype = 0;
    *tfs_tdesc = tdesc;

    FUNC5("vt %u\n", tdesc->vt);

    switch (tdesc->vt)
    {
    case VT_VARIANT:
#if !defined(__i386__) && !defined(__arm__)
        *flags |= IsSimpleRef | MustFree;
        break;
#endif
        /* otherwise fall through */
    case VT_BSTR:
    case VT_SAFEARRAY:
    case VT_CY:
        *flags |= IsByValue | MustFree;
        break;
    case VT_UNKNOWN:
    case VT_DISPATCH:
    case VT_CARRAY:
        *flags |= MustFree;
        break;
    case VT_PTR:
        return FUNC7(typeinfo, tdesc->lptdesc, is_in, is_out,
                server_size, flags, basetype, tfs_tdesc);
    case VT_USERDEFINED:
        FUNC1(typeinfo, tdesc->hreftype, &refinfo);
        FUNC2(refinfo, &attr);

        switch (attr->typekind)
        {
        case TKIND_ENUM:
            *flags |= IsBasetype;
            *basetype = FC_ENUM32;
            break;
        case TKIND_RECORD:
#if defined(__i386__) || defined(__arm__)
            *flags |= IsByValue | MustFree;
#else
            if (attr->cbSizeInstance <= 8)
                *flags |= IsByValue | MustFree;
            else
                *flags |= IsSimpleRef | MustFree;
#endif
            break;
        case TKIND_ALIAS:
            hr = FUNC8(refinfo, &attr->tdescAlias, is_in, is_out,
                    server_size, flags, basetype, tfs_tdesc);
            break;
        default:
            FUNC0("unhandled kind %#x\n", attr->typekind);
            hr = E_NOTIMPL;
            break;
        }

        FUNC4(refinfo, attr);
        FUNC3(refinfo);
        break;
    default:
        if ((*basetype = FUNC6(tdesc->vt)))
            *flags |= IsBasetype;
        else
        {
            FUNC0("unhandled type %u\n", tdesc->vt);
            return E_NOTIMPL;
        }
        break;
    }

    return hr;
}