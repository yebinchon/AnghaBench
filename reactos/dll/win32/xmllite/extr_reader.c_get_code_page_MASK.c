#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t xml_encoding ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  cp; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  S_OK ; 
 size_t XmlEncoding_Unknown ; 
 TYPE_1__* xml_encoding_map ; 

HRESULT FUNC1(xml_encoding encoding, UINT *cp)
{
    if (encoding == XmlEncoding_Unknown)
    {
        FUNC0("unsupported encoding %d\n", encoding);
        return E_NOTIMPL;
    }

    *cp = xml_encoding_map[encoding].cp;

    return S_OK;
}