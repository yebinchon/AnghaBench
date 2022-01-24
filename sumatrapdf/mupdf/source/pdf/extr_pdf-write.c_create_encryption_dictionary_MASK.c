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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  pdf_crypt ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  AuthEvent ; 
 int /*<<< orphan*/  CF ; 
 int /*<<< orphan*/  CFM ; 
 int /*<<< orphan*/  Encrypt ; 
 int /*<<< orphan*/  EncryptMetadata ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  Length ; 
 int /*<<< orphan*/  O ; 
 int /*<<< orphan*/  OE ; 
 int /*<<< orphan*/  P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Perms ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  StdCF ; 
 int /*<<< orphan*/  StmF ; 
 int /*<<< orphan*/  StrF ; 
 int /*<<< orphan*/  U ; 
 int /*<<< orphan*/  UE ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(fz_context *ctx, pdf_document *doc, pdf_crypt *crypt)
{
	unsigned char *o, *u;
	pdf_obj *encrypt;
	int r;

	r = FUNC7(ctx, crypt);

	encrypt = FUNC12(ctx, FUNC16(ctx, doc), FUNC0(Encrypt), 10);

	FUNC14(ctx, encrypt, FUNC0(Filter), "Standard");
	FUNC13(ctx, encrypt, FUNC0(R), r);
	FUNC13(ctx, encrypt, FUNC0(V), FUNC10(ctx, crypt));
	FUNC13(ctx, encrypt, FUNC0(Length), FUNC2(ctx, crypt));
	FUNC13(ctx, encrypt, FUNC0(P), FUNC5(ctx, crypt));
	FUNC11(ctx, encrypt, FUNC0(EncryptMetadata), FUNC1(ctx, crypt));

	o = FUNC4(ctx, crypt);
	u = FUNC9(ctx, crypt);

	if (r < 4)
	{
		FUNC15(ctx, encrypt, FUNC0(O), (char *) o, 32);
		FUNC15(ctx, encrypt, FUNC0(U), (char *) u, 32);
	}
	else if (r == 4)
	{
		pdf_obj *cf;

		FUNC14(ctx, encrypt, FUNC0(StmF), "StdCF");
		FUNC14(ctx, encrypt, FUNC0(StrF), "StdCF");

		cf = FUNC12(ctx, encrypt, FUNC0(CF), 1);
		cf = FUNC12(ctx, cf, FUNC0(StdCF), 3);
		FUNC14(ctx, cf, FUNC0(AuthEvent), "DocOpen");
		FUNC14(ctx, cf, FUNC0(CFM), "AESV2");
		FUNC13(ctx, cf, FUNC0(Length), 16);
		FUNC15(ctx, encrypt, FUNC0(O), (char *) o, 32);
		FUNC15(ctx, encrypt, FUNC0(U), (char *) u, 32);
	}
	else if (r == 6)
	{
		unsigned char *oe = FUNC3(ctx, crypt);
		unsigned char *ue = FUNC8(ctx, crypt);
		pdf_obj *cf;

		FUNC14(ctx, encrypt, FUNC0(StmF), "StdCF");
		FUNC14(ctx, encrypt, FUNC0(StrF), "StdCF");

		cf = FUNC12(ctx, encrypt, FUNC0(CF), 1);
		cf = FUNC12(ctx, cf, FUNC0(StdCF), 3);
		FUNC14(ctx, cf, FUNC0(AuthEvent), "DocOpen");
		FUNC14(ctx, cf, FUNC0(CFM), "AESV3");
		FUNC13(ctx, cf, FUNC0(Length), 32);
		FUNC15(ctx, encrypt, FUNC0(O), (char *) o, 48);
		FUNC15(ctx, encrypt, FUNC0(U), (char *) u, 48);
		FUNC15(ctx, encrypt, FUNC0(OE), (char *) oe, 32);
		FUNC15(ctx, encrypt, FUNC0(UE), (char *) ue, 32);
		FUNC15(ctx, encrypt, FUNC0(Perms), (char *) FUNC6(ctx, crypt), 16);
	}
}