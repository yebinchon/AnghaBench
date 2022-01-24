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
typedef  int /*<<< orphan*/  expectedhash ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/ * selfname ; 

__attribute__((used)) static void FUNC13(void)
{
    BOOL ret;
    HANDLE file;
    DWORD hashsize = 0;
    BYTE* hash;
    BYTE expectedhash[20] = {0x3a,0xa1,0x19,0x08,0xec,0xa6,0x0d,0x2e,0x7e,0xcc,0x7a,0xca,0xf5,0xb8,0x2e,0x62,0x6a,0xda,0xf0,0x19};
    CHAR temp[MAX_PATH];
    DWORD written;

    /* All NULL */
    FUNC8(0xdeadbeef);
    ret = FUNC12(NULL, NULL, NULL, 0);
    FUNC11(!ret, "Expected failure\n");
    FUNC11(FUNC3() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC3());

    /* NULL filehandle, rest is legal */
    FUNC8(0xdeadbeef);
    ret = FUNC12(NULL, &hashsize, NULL, 0);
    FUNC11(!ret, "Expected failure\n");
    FUNC11(FUNC3() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC3());

    /* Correct filehandle, rest is NULL */
    file = FUNC1(selfname, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    FUNC8(0xdeadbeef);
    ret = FUNC12(file, NULL, NULL, 0);
    FUNC11(!ret, "Expected failure\n");
    FUNC11(FUNC3() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC3());
    FUNC0(file);

    /* All OK, but dwFlags set to 1 */
    file = FUNC1(selfname, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    FUNC8(0xdeadbeef);
    ret = FUNC12(file, &hashsize, NULL, 1);
    FUNC11(!ret, "Expected failure\n");
    FUNC11(FUNC3() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC3());
    FUNC0(file);

    /* All OK, requesting the size of the hash */
    file = FUNC1(selfname, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    FUNC11(file != INVALID_HANDLE_VALUE, "CreateFile failed %u\n", FUNC3());
    FUNC8(0xdeadbeef);
    ret = FUNC12(file, &hashsize, NULL, 0);
    FUNC11(ret, "Expected success, got FALSE with %d\n", FUNC3());
    FUNC11(hashsize == 20," Expected a hash size of 20, got %d\n", hashsize);
    FUNC11(FUNC3() == ERROR_INSUFFICIENT_BUFFER,
       "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC3());
    FUNC0(file);

    /* All OK, retrieve the hash
     * Double the hash buffer to see what happens to the size parameter
     */
    file = FUNC1(selfname, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    hashsize *= 2;
    hash = FUNC6(FUNC4(), 0, hashsize);
    FUNC8(0xdeadbeef);
    ret = FUNC12(file, &hashsize, hash, 0);
    FUNC11(ret, "Expected success, got FALSE with %d\n", FUNC3());
    FUNC11(hashsize == 20," Expected a hash size of 20, got %d\n", hashsize);
    FUNC11(FUNC3() == ERROR_SUCCESS,
       "Expected ERROR_SUCCESS, got %d\n", FUNC3());
    FUNC0(file);
    FUNC7(FUNC4(), 0, hash);

    /* Do the same test with a file created and filled by ourselves (and we thus
     * have a known hash for).
     */
    FUNC5(CURR_DIR, "hsh", 0, temp); 
    file = FUNC1(temp, GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL);
    FUNC9(file, "Text in this file is needed to create a know hash", 49, &written, NULL);
    FUNC0(file);

    /* All OK, first request the size and then retrieve the hash */
    file = FUNC1(temp, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    hashsize = 0;
    FUNC12(file, &hashsize, NULL, 0);
    hash = FUNC6(FUNC4(), 0, hashsize);
    FUNC8(0xdeadbeef);
    ret = FUNC12(file, &hashsize, hash, 0);
    FUNC11(ret, "Expected success, got FALSE with %d\n", FUNC3());
    FUNC11(FUNC3() == ERROR_SUCCESS,
       "Expected ERROR_SUCCESS, got %d\n", FUNC3());
    FUNC11(hashsize == sizeof(expectedhash) &&
       !FUNC10(hash, expectedhash, sizeof(expectedhash)),
       "Hashes didn't match\n");
    FUNC0(file);

    FUNC7(FUNC4(), 0, hash);
    FUNC2(temp);
}