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
typedef  int /*<<< orphan*/ * xmlCharEncodingHandlerPtr ;
typedef  int xmlCharEncoding ;

/* Variables and functions */
#define  XML_CHAR_ENCODING_2022_JP 150 
#define  XML_CHAR_ENCODING_8859_1 149 
#define  XML_CHAR_ENCODING_8859_2 148 
#define  XML_CHAR_ENCODING_8859_3 147 
#define  XML_CHAR_ENCODING_8859_4 146 
#define  XML_CHAR_ENCODING_8859_5 145 
#define  XML_CHAR_ENCODING_8859_6 144 
#define  XML_CHAR_ENCODING_8859_7 143 
#define  XML_CHAR_ENCODING_8859_8 142 
#define  XML_CHAR_ENCODING_8859_9 141 
#define  XML_CHAR_ENCODING_EBCDIC 140 
#define  XML_CHAR_ENCODING_ERROR 139 
#define  XML_CHAR_ENCODING_EUC_JP 138 
#define  XML_CHAR_ENCODING_NONE 137 
#define  XML_CHAR_ENCODING_SHIFT_JIS 136 
#define  XML_CHAR_ENCODING_UCS2 135 
#define  XML_CHAR_ENCODING_UCS4BE 134 
#define  XML_CHAR_ENCODING_UCS4LE 133 
#define  XML_CHAR_ENCODING_UCS4_2143 132 
#define  XML_CHAR_ENCODING_UCS4_3412 131 
#define  XML_CHAR_ENCODING_UTF16BE 130 
#define  XML_CHAR_ENCODING_UTF16LE 129 
#define  XML_CHAR_ENCODING_UTF8 128 
 int /*<<< orphan*/ * handlers ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * xmlUTF16BEHandler ; 
 int /*<<< orphan*/ * xmlUTF16LEHandler ; 

xmlCharEncodingHandlerPtr
FUNC3(xmlCharEncoding enc) {
    xmlCharEncodingHandlerPtr handler;

    if (handlers == NULL) FUNC2();
    switch (enc) {
        case XML_CHAR_ENCODING_ERROR:
	    return(NULL);
        case XML_CHAR_ENCODING_NONE:
	    return(NULL);
        case XML_CHAR_ENCODING_UTF8:
	    return(NULL);
        case XML_CHAR_ENCODING_UTF16LE:
	    return(xmlUTF16LEHandler);
        case XML_CHAR_ENCODING_UTF16BE:
	    return(xmlUTF16BEHandler);
        case XML_CHAR_ENCODING_EBCDIC:
            handler = FUNC0("EBCDIC");
            if (handler != NULL) return(handler);
            handler = FUNC0("ebcdic");
            if (handler != NULL) return(handler);
            handler = FUNC0("EBCDIC-US");
            if (handler != NULL) return(handler);
            handler = FUNC0("IBM-037");
            if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_UCS4BE:
            handler = FUNC0("ISO-10646-UCS-4");
            if (handler != NULL) return(handler);
            handler = FUNC0("UCS-4");
            if (handler != NULL) return(handler);
            handler = FUNC0("UCS4");
            if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_UCS4LE:
            handler = FUNC0("ISO-10646-UCS-4");
            if (handler != NULL) return(handler);
            handler = FUNC0("UCS-4");
            if (handler != NULL) return(handler);
            handler = FUNC0("UCS4");
            if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_UCS4_2143:
	    break;
        case XML_CHAR_ENCODING_UCS4_3412:
	    break;
        case XML_CHAR_ENCODING_UCS2:
            handler = FUNC0("ISO-10646-UCS-2");
            if (handler != NULL) return(handler);
            handler = FUNC0("UCS-2");
            if (handler != NULL) return(handler);
            handler = FUNC0("UCS2");
            if (handler != NULL) return(handler);
	    break;

	    /*
	     * We used to keep ISO Latin encodings native in the
	     * generated data. This led to so many problems that
	     * this has been removed. One can still change this
	     * back by registering no-ops encoders for those
	     */
        case XML_CHAR_ENCODING_8859_1:
	    handler = FUNC0("ISO-8859-1");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_2:
	    handler = FUNC0("ISO-8859-2");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_3:
	    handler = FUNC0("ISO-8859-3");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_4:
	    handler = FUNC0("ISO-8859-4");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_5:
	    handler = FUNC0("ISO-8859-5");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_6:
	    handler = FUNC0("ISO-8859-6");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_7:
	    handler = FUNC0("ISO-8859-7");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_8:
	    handler = FUNC0("ISO-8859-8");
	    if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_8859_9:
	    handler = FUNC0("ISO-8859-9");
	    if (handler != NULL) return(handler);
	    break;


        case XML_CHAR_ENCODING_2022_JP:
            handler = FUNC0("ISO-2022-JP");
            if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_SHIFT_JIS:
            handler = FUNC0("SHIFT-JIS");
            if (handler != NULL) return(handler);
            handler = FUNC0("SHIFT_JIS");
            if (handler != NULL) return(handler);
            handler = FUNC0("Shift_JIS");
            if (handler != NULL) return(handler);
	    break;
        case XML_CHAR_ENCODING_EUC_JP:
            handler = FUNC0("EUC-JP");
            if (handler != NULL) return(handler);
	    break;
	default:
	    break;
    }

#ifdef DEBUG_ENCODING
    xmlGenericError(xmlGenericErrorContext,
	    "No handler found for encoding %d\n", enc);
#endif
    return(NULL);
}