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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  dictionary_t ;

/* Variables and functions */
 size_t const MAX_COMPRESSION_RATIO ; 
 size_t MAX_OUTPUT_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ * const,size_t,int /*<<< orphan*/ *,size_t const,int /*<<< orphan*/ * const) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ * const,size_t const) ; 

int FUNC10(int argc, char **argv)
{
    if (argc < 3) {
        FUNC3(stderr, "usage: %s <file.zst> <out_path> [dictionary] \n",
                argv[0]);

        return 1;
    }

    u8* input;
    size_t const input_size = FUNC8(argv[1], &input);

    u8* dict = NULL;
    size_t dict_size = 0;
    if (argc >= 4) {
        dict_size = FUNC8(argv[3], &dict);
    }

    size_t out_capacity = FUNC1(input, input_size);
    if (out_capacity == (size_t)-1) {
        out_capacity = MAX_COMPRESSION_RATIO * input_size;
        FUNC3(stderr, "WARNING: Compressed data does not contain "
                        "decompressed size, going to assume the compression "
                        "ratio is at most %zu (decompressed size of at most "
                        "%u) \n",
                MAX_COMPRESSION_RATIO, (unsigned)out_capacity);
    }
    if (out_capacity > MAX_OUTPUT_SIZE) {
        FUNC3(stderr,
                "Required output size too large for this implementation \n");
        return 1;
    }

    u8* const output = FUNC6(out_capacity);
    if (!output) {
        FUNC3(stderr, "failed to allocate memory \n");
        return 1;
    }

    dictionary_t* const parsed_dict = FUNC2();
    if (dict) {
        FUNC7(parsed_dict, dict, dict_size);
    }
    size_t const decompressed_size =
        FUNC0(output, out_capacity,
                                  input, input_size,
                                  parsed_dict);

    FUNC5(parsed_dict);

    FUNC9(argv[2], output, decompressed_size);

    FUNC4(input);
    FUNC4(output);
    FUNC4(dict);
    return 0;
}