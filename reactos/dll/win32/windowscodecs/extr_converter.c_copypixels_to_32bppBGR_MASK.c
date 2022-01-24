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
struct FormatConverter {int /*<<< orphan*/  source; } ;
typedef  enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
typedef  int /*<<< orphan*/  WICRect ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (struct FormatConverter*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
#define  format_32bppBGR 130 
#define  format_32bppBGRA 129 
#define  format_32bppPBGRA 128 

__attribute__((used)) static HRESULT FUNC2(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    switch (source_format)
    {
    case format_32bppBGR:
    case format_32bppBGRA:
    case format_32bppPBGRA:
        if (prc)
            return FUNC0(This->source, prc, cbStride, cbBufferSize, pbBuffer);
        return S_OK;
    default:
        return FUNC1(This, prc, cbStride, cbBufferSize, pbBuffer, source_format);
    }
}