#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  urlcache_header ;
struct TYPE_4__ {scalar_t__ mapping; int /*<<< orphan*/  mutex; int /*<<< orphan*/  path; scalar_t__ file_size; } ;
typedef  TYPE_1__ cache_container ;
typedef  char WCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FILE_MAP_WRITE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ INVALID_FILE_SIZE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ MAX_BLOCK_NO ; 
 int MAX_PATH ; 
 scalar_t__ MIN_BLOCK_NO ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_ALWAYS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC20(cache_container *container, DWORD blocks_no)
{
    static const WCHAR index_dat[] = {'i','n','d','e','x','.','d','a','t',0};

    HANDLE file;
    WCHAR index_path[MAX_PATH];
    DWORD file_size;
    BOOL validate;

    FUNC13(container->mutex, INFINITE);

    if(container->mapping) {
        FUNC9(container->mutex);
        return ERROR_SUCCESS;
    }

    FUNC19(index_path, container->path);
    FUNC18(index_path, index_dat);

    file = FUNC2(index_path, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0, NULL);
    if(file == INVALID_HANDLE_VALUE) {
	/* Maybe the directory wasn't there? Try to create it */
	if(FUNC1(container->path, 0))
            file = FUNC2(index_path, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_ALWAYS, 0, NULL);
    }
    if(file == INVALID_HANDLE_VALUE) {
        FUNC10("Could not open or create cache index file \"%s\"\n", FUNC17(index_path));
        FUNC9(container->mutex);
        return FUNC7();
    }

    file_size = FUNC6(file, NULL);
    if(file_size == INVALID_FILE_SIZE) {
        FUNC0(file);
	FUNC9(container->mutex);
        return FUNC7();
    }

    if(blocks_no < MIN_BLOCK_NO)
        blocks_no = MIN_BLOCK_NO;
    else if(blocks_no > MAX_BLOCK_NO)
        blocks_no = MAX_BLOCK_NO;

    if(file_size < FUNC4(blocks_no)) {
        DWORD ret = FUNC16(container, file, blocks_no);
        FUNC0(file);
        FUNC9(container->mutex);
        return ret;
    }

    container->file_size = file_size;
    container->mapping = FUNC15(file, container->path, file_size, &validate);
    FUNC0(file);
    if(container->mapping && validate) {
        urlcache_header *header = FUNC8(container->mapping, FILE_MAP_WRITE, 0, 0, 0);

        if(header && !FUNC14(header, file_size)) {
            FUNC12("detected old or broken index.dat file\n");
            FUNC11(header);
            FUNC5(container->path, 100, 0);
        }else if(header) {
            FUNC11(header);
        }else {
            FUNC0(container->mapping);
            container->mapping = NULL;
        }
    }

    if(!container->mapping)
    {
        FUNC3("Couldn't create file mapping (error is %d)\n", FUNC7());
        FUNC9(container->mutex);
        return FUNC7();
    }

    FUNC9(container->mutex);
    return ERROR_SUCCESS;
}