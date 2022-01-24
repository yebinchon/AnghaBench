#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  ostream_t ;
typedef  int /*<<< orphan*/  istream_t ;
struct TYPE_8__ {int /*<<< orphan*/  symbols; } ;
struct TYPE_7__ {TYPE_3__ literals_dtable; } ;
typedef  TYPE_1__ frame_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ * const,int) ; 
 size_t MAX_LITERALS_SIZE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (size_t) ; 

__attribute__((used)) static size_t FUNC11(frame_context_t *const ctx,
                                         istream_t *const in,
                                         u8 **const literals,
                                         const int block_type,
                                         const int size_format) {
    size_t regenerated_size, compressed_size;
    // Only size_format=0 has 1 stream, so default to 4
    int num_streams = 4;
    switch (size_format) {
    case 0:
        // "A single stream. Both Compressed_Size and Regenerated_Size use 10
        // bits (0-1023)."
        num_streams = 1;
    // Fall through as it has the same size format
        /* fallthrough */
    case 1:
        // "4 streams. Both Compressed_Size and Regenerated_Size use 10 bits
        // (0-1023)."
        regenerated_size = FUNC8(in, 10);
        compressed_size = FUNC8(in, 10);
        break;
    case 2:
        // "4 streams. Both Compressed_Size and Regenerated_Size use 14 bits
        // (0-16383)."
        regenerated_size = FUNC8(in, 14);
        compressed_size = FUNC8(in, 14);
        break;
    case 3:
        // "4 streams. Both Compressed_Size and Regenerated_Size use 18 bits
        // (0-262143)."
        regenerated_size = FUNC8(in, 18);
        compressed_size = FUNC8(in, 18);
        break;
    default:
        // Impossible
        FUNC5();
    }
    if (regenerated_size > MAX_LITERALS_SIZE) {
        FUNC1();
    }

    *literals = FUNC10(regenerated_size);
    if (!*literals) {
        FUNC0();
    }

    ostream_t lit_stream = FUNC6(*literals, regenerated_size);
    istream_t huf_stream = FUNC7(in, compressed_size);

    if (block_type == 2) {
        // Decode the provided Huffman table
        // "This section is only present when Literals_Block_Type type is
        // Compressed_Literals_Block (2)."

        FUNC4(&ctx->literals_dtable);
        FUNC9(&ctx->literals_dtable, &huf_stream);
    } else {
        // If the previous Huffman table is being repeated, ensure it exists
        if (!ctx->literals_dtable.symbols) {
            FUNC1();
        }
    }

    size_t symbols_decoded;
    if (num_streams == 1) {
        symbols_decoded = FUNC2(&ctx->literals_dtable, &lit_stream, &huf_stream);
    } else {
        symbols_decoded = FUNC3(&ctx->literals_dtable, &lit_stream, &huf_stream);
    }

    if (symbols_decoded != regenerated_size) {
        FUNC1();
    }

    return regenerated_size;
}