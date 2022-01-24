#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_5__ {int length; void* method; } ;
typedef  TYPE_1__ pdf_crypt_filter ;
struct TYPE_6__ {int length; int r; int /*<<< orphan*/ * cf; } ;
typedef  TYPE_2__ pdf_crypt ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  AESV2 ; 
 int /*<<< orphan*/  AESV3 ; 
 int /*<<< orphan*/  CFM ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  Identity ; 
 int /*<<< orphan*/  Length ; 
 int /*<<< orphan*/  None ; 
 void* PDF_CRYPT_AESV2 ; 
 void* PDF_CRYPT_AESV3 ; 
 void* PDF_CRYPT_NONE ; 
 void* PDF_CRYPT_RC4 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdCF ; 
 int /*<<< orphan*/  V2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, pdf_crypt_filter *cf, pdf_crypt *crypt, pdf_obj *name)
{
	pdf_obj *obj;
	pdf_obj *dict;
	int is_identity = (FUNC7(ctx, name, FUNC0(Identity)));
	int is_stdcf = (!is_identity && FUNC7(ctx, name, FUNC0(StdCF)));

	if (!is_identity && !is_stdcf)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Crypt Filter not Identity or StdCF (%d 0 R)", FUNC10(ctx, crypt->cf));

	cf->method = PDF_CRYPT_NONE;
	cf->length = crypt->length;

	if (!crypt->cf)
	{
		cf->method = (is_identity ? PDF_CRYPT_NONE : PDF_CRYPT_RC4);
		return;
	}

	dict = FUNC3(ctx, crypt->cf, name);
	if (FUNC4(ctx, dict))
	{
		obj = FUNC3(ctx, dict, FUNC0(CFM));
		if (FUNC6(ctx, obj))
		{
			if (FUNC7(ctx, FUNC0(None), obj))
				cf->method = PDF_CRYPT_NONE;
			else if (FUNC7(ctx, FUNC0(V2), obj))
				cf->method = PDF_CRYPT_RC4;
			else if (FUNC7(ctx, FUNC0(AESV2), obj))
				cf->method = PDF_CRYPT_AESV2;
			else if (FUNC7(ctx, FUNC0(AESV3), obj))
				cf->method = PDF_CRYPT_AESV3;
			else
				FUNC2(ctx, "unknown encryption method: %s", FUNC9(ctx, obj));
		}

		obj = FUNC3(ctx, dict, FUNC0(Length));
		if (FUNC5(ctx, obj))
			cf->length = FUNC8(ctx, obj);
	}
	else if (!is_identity)
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot parse crypt filter (%d 0 R)", FUNC10(ctx, crypt->cf));

	/* the length for crypt filters is supposed to be in bytes not bits */
	if (cf->length < 40)
		cf->length = cf->length * 8;

	if ((cf->length % 8) != 0)
		FUNC1(ctx, FZ_ERROR_GENERIC, "invalid key length: %d", cf->length);

	if ((crypt->r == 1 || crypt->r == 2 || crypt->r == 3 || crypt->r == 4) &&
		(cf->length < 40 || cf->length > 128))
		FUNC1(ctx, FZ_ERROR_GENERIC, "invalid key length: %d", cf->length);
	if ((crypt->r == 5 || crypt->r == 6) && cf->length != 256)
		FUNC1(ctx, FZ_ERROR_GENERIC, "invalid key length: %d", cf->length);
}