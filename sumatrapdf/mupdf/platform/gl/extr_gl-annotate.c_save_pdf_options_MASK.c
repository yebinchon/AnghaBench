#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t do_encrypt; char** upwd_utf8; char** opwd_utf8; scalar_t__ do_sanitize; scalar_t__ do_clean; scalar_t__ do_garbage; scalar_t__ do_linear; scalar_t__ do_incremental; scalar_t__ do_compress_fonts; scalar_t__ do_compress_images; scalar_t__ do_compress; scalar_t__ do_decompress; scalar_t__ do_ascii; scalar_t__ do_pretty; } ;
struct TYPE_5__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  NW ; 
 size_t PDF_ENCRYPT_KEEP ; 
 int PDF_ENCRYPT_RC4_40 ; 
 int /*<<< orphan*/  T ; 
 scalar_t__ UI_INPUT_EDIT ; 
 int /*<<< orphan*/  X ; 
 char** cryptalgo_names ; 
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 TYPE_1__ opwinput ; 
 TYPE_3__ save_opts ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (char*,char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ upwinput ; 

__attribute__((used)) static void FUNC8(void)
{
	const char *cryptalgo = cryptalgo_names[save_opts.do_encrypt];
	int choice;

	FUNC5(T, X, NW, 2, 2);
	FUNC4("PDF write options:");
	FUNC5(T, X, NW, 4, 2);

	FUNC2("Incremental", &save_opts.do_incremental);
	FUNC7();
	FUNC2("Pretty-print", &save_opts.do_pretty);
	FUNC2("Ascii", &save_opts.do_ascii);
	FUNC2("Decompress", &save_opts.do_decompress);
	FUNC2("Compress", &save_opts.do_compress);
	FUNC2("Compress images", &save_opts.do_compress_images);
	FUNC2("Compress fonts", &save_opts.do_compress_fonts);
	if (save_opts.do_incremental)
	{
		save_opts.do_garbage = 0;
		save_opts.do_linear = 0;
		save_opts.do_clean = 0;
		save_opts.do_sanitize = 0;
		save_opts.do_encrypt = PDF_ENCRYPT_KEEP;
	}
	else
	{
		FUNC7();
		FUNC2("Linearize", &save_opts.do_linear);
		FUNC2("Garbage collect", &save_opts.do_garbage);
		FUNC2("Clean syntax", &save_opts.do_clean);
		FUNC2("Sanitize syntax", &save_opts.do_sanitize);

		FUNC7();
		FUNC4("Encryption:");
		choice = FUNC6("Encryption", cryptalgo, cryptalgo_names, FUNC1(cryptalgo_names));
		if (choice != -1)
			save_opts.do_encrypt = choice;
	}

	if (save_opts.do_encrypt >= PDF_ENCRYPT_RC4_40)
	{
		FUNC7();
		FUNC4("User password:");
		if (FUNC3(&upwinput, 32, 1) >= UI_INPUT_EDIT)
			FUNC0(save_opts.upwd_utf8, upwinput.text, FUNC1(save_opts.upwd_utf8));
		FUNC4("Owner password:");
		if (FUNC3(&opwinput, 32, 1) >= UI_INPUT_EDIT)
			FUNC0(save_opts.opwd_utf8, opwinput.text, FUNC1(save_opts.opwd_utf8));
	}
}