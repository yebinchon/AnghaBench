#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_3__* cert_info; } ;
typedef  TYPE_6__ X509 ;
struct TYPE_17__ {scalar_t__ ptr; } ;
struct TYPE_21__ {TYPE_4__ pkey; } ;
struct TYPE_18__ {int server_public_key_len; int /*<<< orphan*/  server_public_key; } ;
struct TYPE_20__ {TYPE_5__ secure; } ;
struct TYPE_16__ {TYPE_2__* key; } ;
struct TYPE_15__ {TYPE_1__* algor; } ;
struct TYPE_14__ {int /*<<< orphan*/  algorithm; } ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_7__ RDPCLIENT ;
typedef  TYPE_8__ EVP_PKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  False ; 
 scalar_t__ NID_md5WithRSAEncryption ; 
 int /*<<< orphan*/  NID_rsaEncryption ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SEC_MAX_MODULUS_SIZE ; 
 int /*<<< orphan*/  True ; 
 TYPE_8__* FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static BOOL
FUNC9(RDPCLIENT * This, X509 * cert)
{
	EVP_PKEY *epk = NULL;
	/* By some reason, Microsoft sets the OID of the Public RSA key to
	   the oid for "MD5 with RSA Encryption" instead of "RSA Encryption"

	   Kudos to Richard Levitte for the following (. intiutive .)
	   lines of code that resets the OID and let's us extract the key. */
	if (FUNC4(cert->cert_info->key->algor->algorithm) == NID_md5WithRSAEncryption)
	{
		FUNC1(("Re-setting algorithm type to RSA in server certificate\n"));
		FUNC0(cert->cert_info->key->algor->algorithm);
		cert->cert_info->key->algor->algorithm = FUNC3(NID_rsaEncryption);
	}
	epk = FUNC7(cert);
	if (NULL == epk)
	{
		FUNC8("Failed to extract public key from certificate\n");
		return False;
	}

	This->secure.server_public_key = FUNC5((RSA *) epk->pkey.ptr);
	FUNC2(epk);

	This->secure.server_public_key_len = FUNC6(This->secure.server_public_key);
	if ((This->secure.server_public_key_len < 64) || (This->secure.server_public_key_len > SEC_MAX_MODULUS_SIZE))
	{
		FUNC8("Bad server public key size (%u bits)\n", This->secure.server_public_key_len * 8);
		return False;
	}

	return True;
}