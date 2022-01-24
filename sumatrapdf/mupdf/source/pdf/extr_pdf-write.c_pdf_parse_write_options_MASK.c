#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int do_garbage; int do_appearance; void* permissions; int /*<<< orphan*/  upwd_utf8; int /*<<< orphan*/  opwd_utf8; void* do_encrypt; void* do_incremental; void* do_sanitize; void* do_clean; void* do_linear; void* do_pretty; void* do_ascii; void* do_compress_images; void* do_compress_fonts; void* do_compress; void* do_decompress; } ;
typedef  TYPE_1__ pdf_write_options ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 void* PDF_ENCRYPT_AES_128 ; 
 void* PDF_ENCRYPT_AES_256 ; 
 void* PDF_ENCRYPT_KEEP ; 
 void* PDF_ENCRYPT_NONE ; 
 void* PDF_ENCRYPT_RC4_128 ; 
 void* PDF_ENCRYPT_RC4_40 ; 
 void* PDF_ENCRYPT_UNKNOWN ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,char*,char const**) ; 
 void* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

pdf_write_options *
FUNC6(fz_context *ctx, pdf_write_options *opts, const char *args)
{
	const char *val;

	FUNC4(opts, 0, sizeof *opts);

	if (FUNC2(ctx, args, "decompress", &val))
		opts->do_decompress = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "compress", &val))
		opts->do_compress = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "compress-fonts", &val))
		opts->do_compress_fonts = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "compress-images", &val))
		opts->do_compress_images = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "ascii", &val))
		opts->do_ascii = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "pretty", &val))
		opts->do_pretty = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "linearize", &val))
		opts->do_linear = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "clean", &val))
		opts->do_clean = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "sanitize", &val))
		opts->do_sanitize = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "incremental", &val))
		opts->do_incremental = FUNC3(val, "yes");
	if (FUNC2(ctx, args, "decrypt", &val))
		opts->do_encrypt = FUNC3(val, "yes") ? PDF_ENCRYPT_NONE : PDF_ENCRYPT_KEEP;
	if (FUNC2(ctx, args, "encrypt", &val))
	{
		opts->do_encrypt = PDF_ENCRYPT_UNKNOWN;
		if (FUNC3(val, "none") || FUNC3(val, "no"))
			opts->do_encrypt = PDF_ENCRYPT_NONE;
		if (FUNC3(val, "keep"))
			opts->do_encrypt = PDF_ENCRYPT_KEEP;
		if (FUNC3(val, "rc4-40") || FUNC3(val, "yes"))
			opts->do_encrypt = PDF_ENCRYPT_RC4_40;
		if (FUNC3(val, "rc4-128"))
			opts->do_encrypt = PDF_ENCRYPT_RC4_128;
		if (FUNC3(val, "aes-128"))
			opts->do_encrypt = PDF_ENCRYPT_AES_128;
		if (FUNC3(val, "aes-256"))
			opts->do_encrypt = PDF_ENCRYPT_AES_256;
	}
	if (FUNC2(ctx, args, "owner-password", &val))
		FUNC1(ctx, val, opts->opwd_utf8, FUNC5(opts->opwd_utf8));
	if (FUNC2(ctx, args, "user-password", &val))
		FUNC1(ctx, val, opts->upwd_utf8, FUNC5(opts->upwd_utf8));
	if (FUNC2(ctx, args, "permissions", &val))
		opts->permissions = FUNC0(val);
	else
		opts->permissions = ~0;
	if (FUNC2(ctx, args, "garbage", &val))
	{
		if (FUNC3(val, "yes"))
			opts->do_garbage = 1;
		else if (FUNC3(val, "compact"))
			opts->do_garbage = 2;
		else if (FUNC3(val, "deduplicate"))
			opts->do_garbage = 3;
		else
			opts->do_garbage = FUNC0(val);
	}
	if (FUNC2(ctx, args, "appearance", &val))
	{
		if (FUNC3(val, "yes"))
			opts->do_appearance = 1;
		else if (FUNC3(val, "all"))
			opts->do_appearance = 2;
	}

	return opts;
}