#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  headerBuffer ;
struct TYPE_5__ {scalar_t__ compressedSize; int decompUnavailable; int usesCheck; int /*<<< orphan*/  numSkippableFrames; int /*<<< orphan*/  numActualFrames; int /*<<< orphan*/  windowSize; int /*<<< orphan*/  decompressedSize; } ;
typedef  TYPE_1__ fileInfo_t ;
struct TYPE_6__ {int /*<<< orphan*/  windowSize; } ;
typedef  TYPE_2__ ZSTD_frameHeader ;
typedef  scalar_t__ U64 ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  InfoError ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ * const,long const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const) ; 
 int FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ UTIL_FILESIZE_UNKNOWN ; 
 scalar_t__ const ZSTD_CONTENTSIZE_ERROR ; 
 scalar_t__ const ZSTD_CONTENTSIZE_UNKNOWN ; 
 int ZSTD_FRAMEHEADERSIZE_MAX ; 
 size_t const FUNC5 (int /*<<< orphan*/ ) ; 
 int const ZSTD_MAGICNUMBER ; 
 int const ZSTD_MAGIC_SKIPPABLE_MASK ; 
 int const ZSTD_MAGIC_SKIPPABLE_START ; 
 int /*<<< orphan*/  ZSTD_f_zstd1 ; 
 size_t FUNC6 (int*,size_t const) ; 
 scalar_t__ FUNC7 (int*,size_t const) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int*,size_t const) ; 
 int FUNC9 (size_t const) ; 
 int FUNC10 (int /*<<< orphan*/ * const) ; 
 int FUNC11 (int*,int,int,int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ * const,long const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_frame_error ; 
 int /*<<< orphan*/  info_not_zstd ; 
 int /*<<< orphan*/  info_success ; 
 int /*<<< orphan*/  info_truncated_input ; 

__attribute__((used)) static InfoError
FUNC13(fileInfo_t* info, FILE* const srcFile)
{
    /* begin analyzing frame */
    for ( ; ; ) {
        BYTE headerBuffer[ZSTD_FRAMEHEADERSIZE_MAX];
        size_t const numBytesRead = FUNC11(headerBuffer, 1, sizeof(headerBuffer), srcFile);
        if (numBytesRead < FUNC5(ZSTD_f_zstd1)) {
            if ( FUNC10(srcFile)
              && (numBytesRead == 0)
              && (info->compressedSize > 0)
              && (info->compressedSize != UTIL_FILESIZE_UNKNOWN) ) {
                unsigned long long file_position = (unsigned long long) FUNC2(srcFile);
                unsigned long long file_size = (unsigned long long) info->compressedSize;
                FUNC0(file_position != file_size, info_truncated_input,
                  "Error: seeked to position %llu, which is beyond file size of %llu\n",
                  file_position,
                  file_size);
                break;  /* correct end of file => success */
            }
            FUNC0(FUNC10(srcFile), info_not_zstd, "Error: reached end of file with incomplete frame");
            FUNC0(1, info_frame_error, "Error: did not reach end of file but ran out of frames");
        }
        {   U32 const magicNumber = FUNC4(headerBuffer);
            /* Zstandard frame */
            if (magicNumber == ZSTD_MAGICNUMBER) {
                ZSTD_frameHeader header;
                U64 const frameContentSize = FUNC7(headerBuffer, numBytesRead);
                if ( frameContentSize == ZSTD_CONTENTSIZE_ERROR
                  || frameContentSize == ZSTD_CONTENTSIZE_UNKNOWN ) {
                    info->decompUnavailable = 1;
                } else {
                    info->decompressedSize += frameContentSize;
                }
                FUNC0(FUNC8(&header, headerBuffer, numBytesRead) != 0,
                        info_frame_error, "Error: could not decode frame header");
                info->windowSize = header.windowSize;
                /* move to the end of the frame header */
                {   size_t const headerSize = FUNC6(headerBuffer, numBytesRead);
                    FUNC0(FUNC9(headerSize), info_frame_error, "Error: could not determine frame header size");
                    FUNC0(FUNC12(srcFile, ((long)headerSize)-((long)numBytesRead), SEEK_CUR) != 0,
                            info_frame_error, "Error: could not move to end of frame header");
                }

                /* skip all blocks in the frame */
                {   int lastBlock = 0;
                    do {
                        BYTE blockHeaderBuffer[3];
                        FUNC0(FUNC11(blockHeaderBuffer, 1, 3, srcFile) != 3,
                                info_frame_error, "Error while reading block header");
                        {   U32 const blockHeader = FUNC3(blockHeaderBuffer);
                            U32 const blockTypeID = (blockHeader >> 1) & 3;
                            U32 const isRLE = (blockTypeID == 1);
                            U32 const isWrongBlock = (blockTypeID == 3);
                            long const blockSize = isRLE ? 1 : (long)(blockHeader >> 3);
                            FUNC0(isWrongBlock, info_frame_error, "Error: unsupported block type");
                            lastBlock = blockHeader & 1;
                            FUNC0(FUNC12(srcFile, blockSize, SEEK_CUR) != 0,
                                    info_frame_error, "Error: could not skip to end of block");
                        }
                    } while (lastBlock != 1);
                }

                /* check if checksum is used */
                {   BYTE const frameHeaderDescriptor = headerBuffer[4];
                    int const contentChecksumFlag = (frameHeaderDescriptor & (1 << 2)) >> 2;
                    if (contentChecksumFlag) {
                        info->usesCheck = 1;
                        FUNC0(FUNC12(srcFile, 4, SEEK_CUR) != 0,
                                info_frame_error, "Error: could not skip past checksum");
                }   }
                info->numActualFrames++;
            }
            /* Skippable frame */
            else if ((magicNumber & ZSTD_MAGIC_SKIPPABLE_MASK) == ZSTD_MAGIC_SKIPPABLE_START) {
                U32 const frameSize = FUNC4(headerBuffer + 4);
                long const seek = (long)(8 + frameSize - numBytesRead);
                FUNC0(FUNC1(srcFile, seek, SEEK_CUR) != 0,
                        info_frame_error, "Error: could not find end of skippable frame");
                info->numSkippableFrames++;
            }
            /* unknown content */
            else {
                return info_not_zstd;
            }
        }  /* magic number analysis */
    }  /* end analyzing frames */
    return info_success;
}