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

/* Variables and functions */
 int PDF_ENCRYPT_AES_128 ; 
 int PDF_ENCRYPT_AES_256 ; 
 int PDF_ENCRYPT_RC4_128 ; 
 int PDF_ENCRYPT_RC4_40 ; 
 int PDF_ENCRYPT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *name)
{
	if (!FUNC0(name, "rc4-40")) return PDF_ENCRYPT_RC4_40;
	if (!FUNC0(name, "rc4-128")) return PDF_ENCRYPT_RC4_128;
	if (!FUNC0(name, "aes-128")) return PDF_ENCRYPT_AES_128;
	if (!FUNC0(name, "aes-256")) return PDF_ENCRYPT_AES_256;
	return PDF_ENCRYPT_UNKNOWN;
}