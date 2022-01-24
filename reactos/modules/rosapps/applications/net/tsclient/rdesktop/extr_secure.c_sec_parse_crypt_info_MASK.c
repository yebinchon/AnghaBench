#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_14__ {int disconnect_reason; } ;
struct TYPE_13__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * end; } ;
typedef  TYPE_1__* STREAM ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 scalar_t__ SEC_RANDOM_SIZE ; 
#define  SEC_TAG_KEYSIG 129 
#define  SEC_TAG_PUBKEY 128 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

__attribute__((used)) static BOOL
FUNC13(RDPCLIENT * This, STREAM s, uint32 * rc4_key_size,
		     uint8 ** server_random, uint8 ** modulus, uint8 ** exponent)
{
	uint32 crypt_level, random_len, rsa_info_len;
	uint32 cacert_len, cert_len, flags;
	X509 *cacert, *server_cert;
	uint16 tag, length;
	uint8 *next_tag, *end;

	FUNC6(s, *rc4_key_size);	/* 1 = 40-bit, 2 = 128-bit */
	FUNC6(s, crypt_level);	/* 1 = low, 2 = medium, 3 = high */
	if (crypt_level == 0)	/* no encryption */
		return False;
	FUNC6(s, random_len);
	FUNC6(s, rsa_info_len);

	if (random_len != SEC_RANDOM_SIZE)
	{
		FUNC4("random len %d, expected %d\n", random_len, SEC_RANDOM_SIZE);
		return False;
	}

	FUNC7(s, *server_random, random_len);

	/* RSA info */
	end = s->p + rsa_info_len;
	if (end > s->end)
		return False;

	FUNC6(s, flags);	/* 1 = RDP4-style, 0x80000002 = X.509 */
	if (flags & 1)
	{
		FUNC0(("We're going for the RDP4-style encryption\n"));
		FUNC8(s, 8);	/* unknown */

		while (s->p < end)
		{
			FUNC5(s, tag);
			FUNC5(s, length);

			next_tag = s->p + length;

			switch (tag)
			{
				case SEC_TAG_PUBKEY:
					if (!FUNC10(This, s, modulus, exponent))
						return False;
					FUNC0(("Got Public key, RDP4-style\n"));

					break;

				case SEC_TAG_KEYSIG:
					/* Is this a Microsoft key that we just got? */
					/* Care factor: zero! */
					/* Actually, it would probably be a good idea to check if the public key is signed with this key, and then store this
					   key as a known key of the hostname. This would prevent some MITM-attacks. */
					break;

				default:
					FUNC12("crypt tag 0x%x\n", tag);
			}

			s->p = next_tag;
		}
	}
	else
	{
		uint32 certcount;

		FUNC0(("We're going for the RDP5-style encryption\n"));
		FUNC6(s, certcount);	/* Number of certificates */

		if (certcount < 2)
		{
			FUNC4("Server didn't send enough X509 certificates\n");
			This->disconnect_reason = 1798;
			return False;
		}

		for (; certcount > 2; certcount--)
		{		/* ignore all the certificates between the root and the signing CA */
			uint32 ignorelen;
			X509 *ignorecert;

			FUNC0(("Ignored certs left: %d\n", certcount));

			FUNC6(s, ignorelen);
			FUNC0(("Ignored Certificate length is %d\n", ignorelen));
			ignorecert = FUNC3(NULL, &(s->p), ignorelen);

			if (ignorecert == NULL)
			{	/* XXX: error out? */
				FUNC0(("got a bad cert: this will probably screw up the rest of the communication\n"));
			}

#ifdef WITH_DEBUG_RDP5
			DEBUG_RDP5(("cert #%d (ignored):\n", certcount));
			X509_print_fp(stdout, ignorecert);
#endif
		}

		/* Do da funky X.509 stuffy

		   "How did I find out about this?  I looked up and saw a
		   bright light and when I came to I had a scar on my forehead
		   and knew about X.500"
		   - Peter Gutman in a early version of
		   http://www.cs.auckland.ac.nz/~pgut001/pubs/x509guide.txt
		 */

		FUNC6(s, cacert_len);
		FUNC0(("CA Certificate length is %d\n", cacert_len));
		cacert = FUNC3(NULL, &(s->p), cacert_len);
		/* Note: We don't need to move s->p here - d2i_X509 is
		   "kind" enough to do it for us */
		if (NULL == cacert)
		{
			FUNC4("Couldn't load CA Certificate from server\n");
			This->disconnect_reason = 1798;
			return False;
		}

		/* Currently, we don't use the CA Certificate.
		   FIXME:
		   *) Verify the server certificate (server_cert) with the
		   CA certificate.
		   *) Store the CA Certificate with the hostname of the
		   server we are connecting to as key, and compare it
		   when we connect the next time, in order to prevent
		   MITM-attacks.
		 */

		FUNC1(cacert);

		FUNC6(s, cert_len);
		FUNC0(("Certificate length is %d\n", cert_len));
		server_cert = FUNC3(NULL, &(s->p), cert_len);
		if (NULL == server_cert)
		{
			FUNC4("Couldn't load Certificate from server\n");
			This->disconnect_reason = 1798;
			return False;
		}

		FUNC8(s, 16);	/* Padding */

		/* Note: Verifying the server certificate must be done here,
		   before sec_parse_public_key since we'll have to apply
		   serious violence to the key after this */

		if (!FUNC11(This, server_cert))
		{
			FUNC0(("Didn't parse X509 correctly\n"));
			FUNC1(server_cert);
			This->disconnect_reason = 1798;
			return False;
		}
		FUNC1(server_cert);
		return True;	/* There's some garbage here we don't care about */
	}
	return FUNC9(s);
}