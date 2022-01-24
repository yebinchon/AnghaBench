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
typedef  int /*<<< orphan*/  xmlCharEncodingHandlerPtr ;

/* Variables and functions */
 int MAX_ENCODING_HANDLERS ; 
 int /*<<< orphan*/ * UTF16BEToUTF8 ; 
 int /*<<< orphan*/ * UTF16LEToUTF8 ; 
 int /*<<< orphan*/ * UTF8ToHtml ; 
 int /*<<< orphan*/ * UTF8ToUTF16 ; 
 int /*<<< orphan*/ * UTF8ToUTF16BE ; 
 int /*<<< orphan*/ * UTF8ToUTF16LE ; 
 int /*<<< orphan*/ * UTF8ToUTF8 ; 
 int /*<<< orphan*/ * UTF8Toascii ; 
 int /*<<< orphan*/ * UTF8Toisolat1 ; 
 int /*<<< orphan*/  XML_ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/ * asciiToUTF8 ; 
 int /*<<< orphan*/ * handlers ; 
 int /*<<< orphan*/ * isolat1ToUTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int xmlLittleEndian ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* xmlUTF16BEHandler ; 
 void* xmlUTF16LEHandler ; 

void
FUNC5(void) {
    unsigned short int tst = 0x1234;
    unsigned char *ptr = (unsigned char *) &tst;

    if (handlers != NULL) return;

    handlers = (xmlCharEncodingHandlerPtr *)
        FUNC2(MAX_ENCODING_HANDLERS * sizeof(xmlCharEncodingHandlerPtr));

    if (*ptr == 0x12) xmlLittleEndian = 0;
    else if (*ptr == 0x34) xmlLittleEndian = 1;
    else {
        FUNC0(XML_ERR_INTERNAL_ERROR,
	               "Odd problem at endianness detection\n", NULL);
    }

    if (handlers == NULL) {
        FUNC1("xmlInitCharEncodingHandlers : out of memory !\n");
	return;
    }
    FUNC3("UTF-8", UTF8ToUTF8, UTF8ToUTF8);
#ifdef LIBXML_OUTPUT_ENABLED
    xmlUTF16LEHandler =
          xmlNewCharEncodingHandler("UTF-16LE", UTF16LEToUTF8, UTF8ToUTF16LE);
    xmlUTF16BEHandler =
          xmlNewCharEncodingHandler("UTF-16BE", UTF16BEToUTF8, UTF8ToUTF16BE);
    xmlNewCharEncodingHandler("UTF-16", UTF16LEToUTF8, UTF8ToUTF16);
    xmlNewCharEncodingHandler("ISO-8859-1", isolat1ToUTF8, UTF8Toisolat1);
    xmlNewCharEncodingHandler("ASCII", asciiToUTF8, UTF8Toascii);
    xmlNewCharEncodingHandler("US-ASCII", asciiToUTF8, UTF8Toascii);
#ifdef LIBXML_HTML_ENABLED
    xmlNewCharEncodingHandler("HTML", NULL, UTF8ToHtml);
#endif
#else
    xmlUTF16LEHandler =
          FUNC3("UTF-16LE", UTF16LEToUTF8, NULL);
    xmlUTF16BEHandler =
          FUNC3("UTF-16BE", UTF16BEToUTF8, NULL);
    FUNC3("UTF-16", UTF16LEToUTF8, NULL);
    FUNC3("ISO-8859-1", isolat1ToUTF8, NULL);
    FUNC3("ASCII", asciiToUTF8, NULL);
    FUNC3("US-ASCII", asciiToUTF8, NULL);
#endif /* LIBXML_OUTPUT_ENABLED */
#if !defined(LIBXML_ICONV_ENABLED) && !defined(LIBXML_ICU_ENABLED)
#ifdef LIBXML_ISO8859X_ENABLED
    xmlRegisterCharEncodingHandlersISO8859x ();
#endif
#endif

}