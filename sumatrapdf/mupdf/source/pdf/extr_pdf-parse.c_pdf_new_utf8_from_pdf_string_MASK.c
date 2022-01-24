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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int* fz_unicode_from_pdf_doc_encoding ; 
 scalar_t__ FUNC3 (int*,unsigned char const*,unsigned char const*) ; 
 scalar_t__ FUNC4 (int*,unsigned char const*,unsigned char const*) ; 
 size_t FUNC5 (unsigned char const*,size_t,size_t) ; 
 size_t FUNC6 (unsigned char const*,size_t,size_t) ; 
 size_t FUNC7 (unsigned char const*,size_t,size_t) ; 

char *
FUNC8(fz_context *ctx, const char *ssrcptr, size_t srclen)
{
	const unsigned char *srcptr = (const unsigned char*)ssrcptr;
	char *dstptr, *dst;
	size_t dstlen = 0;
	int ucs;
	size_t i, n;

	/* UTF-16BE */
	if (srclen >= 2 && srcptr[0] == 254 && srcptr[1] == 255)
	{
		i = 2;
		while (i + 2 <= srclen)
		{
			n = FUNC5(srcptr, srclen, i);
			if (n)
				i += n;
			else
			{
				i += FUNC3(&ucs, srcptr + i, srcptr + srclen);
				dstlen += FUNC1(ucs);
			}
		}

		dstptr = dst = FUNC0(ctx, dstlen + 1);

		i = 2;
		while (i + 2 <= srclen)
		{
			n = FUNC5(srcptr, srclen, i);
			if (n)
				i += n;
			else
			{
				i += FUNC3(&ucs, srcptr + i, srcptr + srclen);
				dstptr += FUNC2(dstptr, ucs);
			}
		}
	}

	/* UTF-16LE */
	else if (srclen >= 2 && srcptr[0] == 255 && srcptr[1] == 254)
	{
		i = 2;
		while (i + 2 <= srclen)
		{
			n = FUNC6(srcptr, srclen, i);
			if (n)
				i += n;
			else
			{
				i += FUNC4(&ucs, srcptr + i, srcptr + srclen);
				dstlen += FUNC1(ucs);
			}
		}

		dstptr = dst = FUNC0(ctx, dstlen + 1);

		i = 2;
		while (i + 2 <= srclen)
		{
			n = FUNC6(srcptr, srclen, i);
			if (n)
				i += n;
			else
			{
				i += FUNC4(&ucs, srcptr + i, srcptr + srclen);
				dstptr += FUNC2(dstptr, ucs);
			}
		}
	}

	/* UTF-8 */
	else if (srclen >= 3 && srcptr[0] == 239 && srcptr[1] == 187 && srcptr[2] == 191)
	{
		i = 3;
		while (i < srclen)
		{
			n = FUNC7(srcptr, srclen, i);
			if (n)
				i += n;
			else
			{
				i += 1;
				dstlen += 1;
			}
		}

		dstptr = dst = FUNC0(ctx, dstlen + 1);

		i = 3;
		while (i < srclen)
		{
			n = FUNC7(srcptr, srclen, i);
			if (n)
				i += n;
			else
				*dstptr++ = srcptr[i++];
		}
	}

	/* PDFDocEncoding */
	else
	{
		for (i = 0; i < srclen; i++)
			dstlen += FUNC1(fz_unicode_from_pdf_doc_encoding[srcptr[i]]);

		dstptr = dst = FUNC0(ctx, dstlen + 1);

		for (i = 0; i < srclen; i++)
		{
			ucs = fz_unicode_from_pdf_doc_encoding[srcptr[i]];
			dstptr += FUNC2(dstptr, ucs);
		}
	}

	*dstptr = 0;
	return dst;
}