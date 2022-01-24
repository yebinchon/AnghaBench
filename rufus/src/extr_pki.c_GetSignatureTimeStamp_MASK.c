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
typedef  char wchar_t ;
typedef  long long uint64_t ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  char* PCMSG_SIGNER_INFO ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/ * HCRYPTMSG ;
typedef  int /*<<< orphan*/ * HCERTSTORE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED_EMBED ; 
 int /*<<< orphan*/  CERT_QUERY_FORMAT_FLAG_BINARY ; 
 int /*<<< orphan*/  CERT_QUERY_OBJECT_FILE ; 
 int /*<<< orphan*/  CMSG_SIGNER_INFO_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 long long FUNC7 (char*) ; 
 long long FUNC8 (char*) ; 
 scalar_t__ MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (long long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (long long) ; 
 char* FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 char* FUNC15 (char const*) ; 
 char* FUNC16 (char*) ; 

uint64_t FUNC17(const char* path)
{
	char *mpath = NULL;
	BOOL r;
	HMODULE hm;
	HCERTSTORE hStore = NULL;
	HCRYPTMSG hMsg = NULL;
	DWORD dwSize, dwEncoding, dwContentType, dwFormatType;
	PCMSG_SIGNER_INFO pSignerInfo = NULL;
	DWORD dwSignerInfo = 0;
	wchar_t *szFileName;
	uint64_t timestamp = 0ULL, nested_timestamp;

	// If the path is NULL, get the signature of the current runtime
	if (path == NULL) {
		szFileName = FUNC12(MAX_PATH, sizeof(wchar_t));
		if (szFileName == NULL)
			goto out;
		hm = FUNC6(NULL);
		if (hm == NULL) {
			FUNC14("PKI: Could not get current executable handle: %s", FUNC10());
			goto out;
		}
		dwSize = FUNC5(hm, szFileName, MAX_PATH);
		if ((dwSize == 0) || ((dwSize == MAX_PATH) && (FUNC4() == ERROR_INSUFFICIENT_BUFFER))) {
			FUNC14("PKI: Could not get module filename: %s", FUNC10());
			goto out;
		}
		mpath = FUNC16(szFileName);
	} else {
		szFileName = FUNC15(path);
	}

	// Get message handle and store handle from the signed file.
	r = FUNC3(CERT_QUERY_OBJECT_FILE, szFileName,
		CERT_QUERY_CONTENT_FLAG_PKCS7_SIGNED_EMBED, CERT_QUERY_FORMAT_FLAG_BINARY,
		0, &dwEncoding, &dwContentType, &dwFormatType, &hStore, &hMsg, NULL);
	if (!r) {
		FUNC14("PKI: Failed to get signature for '%s': %s", (path==NULL)?mpath:path, FUNC10());
		goto out;
	}

	// Get signer information size.
	r = FUNC2(hMsg, CMSG_SIGNER_INFO_PARAM, 0, NULL, &dwSignerInfo);
	if (!r) {
		FUNC14("PKI: Failed to get signer size: %s", FUNC10());
		goto out;
	}

	// Allocate memory for signer information.
	pSignerInfo = (PCMSG_SIGNER_INFO)FUNC12(dwSignerInfo, 1);
	if (!pSignerInfo) {
		FUNC14("PKI: Could not allocate memory for signer information");
		goto out;
	}

	// Get Signer Information.
	r = FUNC2(hMsg, CMSG_SIGNER_INFO_PARAM, 0, (PVOID)pSignerInfo, &dwSignerInfo);
	if (!r) {
		FUNC14("PKI: Failed to get signer information: %s", FUNC10());
		goto out;
	}

	// Get the RFC 3161 timestamp
	timestamp = FUNC8(pSignerInfo);
	if (timestamp)
		FUNC14("Note: '%s' has timestamp %s", (path==NULL)?mpath:path, FUNC9(timestamp));
	// Because we are currently using both SHA-1 and SHA-256 signatures, we are in the very specific
	// situation that Windows may say our executable passes Authenticode validation on Windows 7 or
	// later (which includes timestamp validation) even if the SHA-1 signature or timestamps have
	// been altered.
	// This means that, if we don't also check the nested SHA-256 signature timestamp, an attacker
	// could alter the SHA-1 one (which is the one we use by default for chronology validation) and
	// trick us into using an invalid timestamp value. To prevent this, we validate that, if we have
	// both a regular and nested timestamp, they are within 60 seconds of each other.
	nested_timestamp = FUNC7(pSignerInfo);
	if (nested_timestamp)
		FUNC14("Note: '%s' has nested timestamp %s", (path==NULL)?mpath:path, FUNC9(nested_timestamp));
	if ((timestamp != 0ULL) && (nested_timestamp != 0ULL)) {
		if (FUNC11(nested_timestamp - timestamp) > 100) {
			FUNC14("PKI: Signature timestamp and nested timestamp differ by more than a minute. "
				"This could indicate something very nasty...", timestamp, nested_timestamp);
			timestamp = 0ULL;
		}
	}

out:
	FUNC13(mpath);
	FUNC13(szFileName);
	FUNC13(pSignerInfo);
	if (hStore != NULL)
		FUNC0(hStore, 0);
	if (hMsg != NULL)
		FUNC1(hMsg);
	return timestamp;
}