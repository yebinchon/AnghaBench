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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned int ZSTD_dictLoadMethod_e ;
typedef  scalar_t__ ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (void* const) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (size_t) ; 
 scalar_t__ const ZSTD_dct_rawContent ; 
 scalar_t__ FUNC8 (size_t const) ; 
 size_t FUNC9 (void* const,size_t const,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,unsigned int const,scalar_t__ const) ; 
 size_t FUNC10 (void* const,size_t,void* const,size_t const,int /*<<< orphan*/  const*,size_t,unsigned int const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC11 (void* const) ; 
 void* FUNC12 (size_t const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,void* const,size_t) ; 

int FUNC14(const uint8_t *src, size_t size)
{
    FUZZ_dataProducer_t *producer = FUNC3(src, size);
    ZSTD_dictLoadMethod_e const dlm =
    size = FUNC6(producer, 0, 1);
    ZSTD_dictContentType_e const dct =
            FUNC6(producer, 0, 2);
    size = FUNC5(producer);

    FUNC0(2, "Dict load method %d", dlm);
    FUNC0(2, "Dict content type %d", dct);
    FUNC0(2, "Dict size %u", (unsigned)size);

    void* const rBuf = FUNC12(size);
    FUNC1(rBuf);
    size_t const cBufSize = FUNC7(size);
    void* const cBuf = FUNC12(cBufSize);
    FUNC1(cBuf);

    size_t const cSize =
            FUNC9(cBuf, cBufSize, src, size, src, size, dlm, dct);
    /* compression failing is okay */
    if (FUNC8(cSize)) {
      FUNC2(dct != ZSTD_dct_rawContent, "Raw must always succeed!");
      goto out;
    }
    size_t const rSize =
            FUNC10(rBuf, size, cBuf, cSize, src, size, dlm, dct);
    FUNC2(rSize == size, "Incorrect regenerated size");
    FUNC2(!FUNC13(src, rBuf, size), "Corruption!");

out:
    FUNC11(cBuf);
    FUNC11(rBuf);
    FUNC4(producer);
    return 0;
}