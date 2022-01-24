#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserInputBufferPtr ;
typedef  int xmlChar ;
typedef  int /*<<< orphan*/ * xmlBufPtr ;
struct TYPE_3__ {int /*<<< orphan*/ * encoder; int /*<<< orphan*/ * raw; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_I18N_CONV_FAILED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 

int
FUNC11(xmlParserInputBufferPtr input, int flush)
{
    int ret;
    size_t written;
    size_t toconv;
    int c_in;
    int c_out;
    xmlBufPtr in;
    xmlBufPtr out;

    if ((input == NULL) || (input->encoder == NULL) ||
        (input->buffer == NULL) || (input->raw == NULL))
        return (-1);
    out = input->buffer;
    in = input->raw;

    toconv = FUNC7(in);
    if (toconv == 0)
        return (0);
    if ((toconv > 64 * 1024) && (flush == 0))
        toconv = 64 * 1024;
    written = FUNC2(out);
    if (written > 0)
        written--; /* count '\0' */
    if (toconv * 2 >= written) {
        FUNC5(out, toconv * 2);
        written = FUNC2(out);
        if (written > 0)
            written--; /* count '\0' */
    }
    if ((written > 128 * 1024) && (flush == 0))
        written = 128 * 1024;

    c_in = toconv;
    c_out = written;
    ret = FUNC8(input->encoder, FUNC4(out), &c_out,
                           FUNC3(in), &c_in, flush);
    FUNC6(in, c_in);
    FUNC1(out, c_out);
    if (ret == -1)
        ret = -3;

    switch (ret) {
        case 0:
#ifdef DEBUG_ENCODING
            xmlGenericError(xmlGenericErrorContext,
                            "converted %d bytes to %d bytes of input\n",
                            c_in, c_out);
#endif
            break;
        case -1:
#ifdef DEBUG_ENCODING
            xmlGenericError(xmlGenericErrorContext,
                         "converted %d bytes to %d bytes of input, %d left\n",
                            c_in, c_out, (int)xmlBufUse(in));
#endif
            break;
        case -3:
#ifdef DEBUG_ENCODING
            xmlGenericError(xmlGenericErrorContext,
                        "converted %d bytes to %d bytes of input, %d left\n",
                            c_in, c_out, (int)xmlBufUse(in));
#endif
            break;
        case -2: {
            char buf[50];
            const xmlChar *content = FUNC3(in);

	    FUNC0(&buf[0], 49, "0x%02X 0x%02X 0x%02X 0x%02X",
		     content[0], content[1],
		     content[2], content[3]);
	    buf[49] = 0;
	    FUNC9(XML_I18N_CONV_FAILED,
		    "input conversion failed due to input error, bytes %s\n",
		           buf);
        }
    }
    /*
     * Ignore when input buffer is not on a boundary
     */
    if (ret == -3)
        ret = 0;
    return (c_out? c_out : ret);
}