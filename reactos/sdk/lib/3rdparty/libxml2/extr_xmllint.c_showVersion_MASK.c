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

/* Variables and functions */
 int /*<<< orphan*/  XML_WITH_AUTOMATA ; 
 int /*<<< orphan*/  XML_WITH_C14N ; 
 int /*<<< orphan*/  XML_WITH_CATALOG ; 
 int /*<<< orphan*/  XML_WITH_DEBUG ; 
 int /*<<< orphan*/  XML_WITH_DEBUG_MEM ; 
 int /*<<< orphan*/  XML_WITH_DEBUG_RUN ; 
 int /*<<< orphan*/  XML_WITH_EXPR ; 
 int /*<<< orphan*/  XML_WITH_FTP ; 
 int /*<<< orphan*/  XML_WITH_HTML ; 
 int /*<<< orphan*/  XML_WITH_HTTP ; 
 int /*<<< orphan*/  XML_WITH_ICONV ; 
 int /*<<< orphan*/  XML_WITH_ICU ; 
 int /*<<< orphan*/  XML_WITH_ISO8859X ; 
 int /*<<< orphan*/  XML_WITH_LEGACY ; 
 int /*<<< orphan*/  XML_WITH_LZMA ; 
 int /*<<< orphan*/  XML_WITH_MODULES ; 
 int /*<<< orphan*/  XML_WITH_OUTPUT ; 
 int /*<<< orphan*/  XML_WITH_PATTERN ; 
 int /*<<< orphan*/  XML_WITH_PUSH ; 
 int /*<<< orphan*/  XML_WITH_READER ; 
 int /*<<< orphan*/  XML_WITH_REGEXP ; 
 int /*<<< orphan*/  XML_WITH_SAX1 ; 
 int /*<<< orphan*/  XML_WITH_SCHEMAS ; 
 int /*<<< orphan*/  XML_WITH_SCHEMATRON ; 
 int /*<<< orphan*/  XML_WITH_THREAD ; 
 int /*<<< orphan*/  XML_WITH_TREE ; 
 int /*<<< orphan*/  XML_WITH_UNICODE ; 
 int /*<<< orphan*/  XML_WITH_VALID ; 
 int /*<<< orphan*/  XML_WITH_WRITER ; 
 int /*<<< orphan*/  XML_WITH_XINCLUDE ; 
 int /*<<< orphan*/  XML_WITH_XPATH ; 
 int /*<<< orphan*/  XML_WITH_XPTR ; 
 int /*<<< orphan*/  XML_WITH_ZLIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* xmlParserVersion ; 

__attribute__((used)) static void FUNC2(const char *name) {
    FUNC0(stderr, "%s: using libxml version %s\n", name, xmlParserVersion);
    FUNC0(stderr, "   compiled with: ");
    if (FUNC1(XML_WITH_THREAD)) FUNC0(stderr, "Threads ");
    if (FUNC1(XML_WITH_TREE)) FUNC0(stderr, "Tree ");
    if (FUNC1(XML_WITH_OUTPUT)) FUNC0(stderr, "Output ");
    if (FUNC1(XML_WITH_PUSH)) FUNC0(stderr, "Push ");
    if (FUNC1(XML_WITH_READER)) FUNC0(stderr, "Reader ");
    if (FUNC1(XML_WITH_PATTERN)) FUNC0(stderr, "Patterns ");
    if (FUNC1(XML_WITH_WRITER)) FUNC0(stderr, "Writer ");
    if (FUNC1(XML_WITH_SAX1)) FUNC0(stderr, "SAXv1 ");
    if (FUNC1(XML_WITH_FTP)) FUNC0(stderr, "FTP ");
    if (FUNC1(XML_WITH_HTTP)) FUNC0(stderr, "HTTP ");
    if (FUNC1(XML_WITH_VALID)) FUNC0(stderr, "DTDValid ");
    if (FUNC1(XML_WITH_HTML)) FUNC0(stderr, "HTML ");
    if (FUNC1(XML_WITH_LEGACY)) FUNC0(stderr, "Legacy ");
    if (FUNC1(XML_WITH_C14N)) FUNC0(stderr, "C14N ");
    if (FUNC1(XML_WITH_CATALOG)) FUNC0(stderr, "Catalog ");
    if (FUNC1(XML_WITH_XPATH)) FUNC0(stderr, "XPath ");
    if (FUNC1(XML_WITH_XPTR)) FUNC0(stderr, "XPointer ");
    if (FUNC1(XML_WITH_XINCLUDE)) FUNC0(stderr, "XInclude ");
    if (FUNC1(XML_WITH_ICONV)) FUNC0(stderr, "Iconv ");
    if (FUNC1(XML_WITH_ICU)) FUNC0(stderr, "ICU ");
    if (FUNC1(XML_WITH_ISO8859X)) FUNC0(stderr, "ISO8859X ");
    if (FUNC1(XML_WITH_UNICODE)) FUNC0(stderr, "Unicode ");
    if (FUNC1(XML_WITH_REGEXP)) FUNC0(stderr, "Regexps ");
    if (FUNC1(XML_WITH_AUTOMATA)) FUNC0(stderr, "Automata ");
    if (FUNC1(XML_WITH_EXPR)) FUNC0(stderr, "Expr ");
    if (FUNC1(XML_WITH_SCHEMAS)) FUNC0(stderr, "Schemas ");
    if (FUNC1(XML_WITH_SCHEMATRON)) FUNC0(stderr, "Schematron ");
    if (FUNC1(XML_WITH_MODULES)) FUNC0(stderr, "Modules ");
    if (FUNC1(XML_WITH_DEBUG)) FUNC0(stderr, "Debug ");
    if (FUNC1(XML_WITH_DEBUG_MEM)) FUNC0(stderr, "MemDebug ");
    if (FUNC1(XML_WITH_DEBUG_RUN)) FUNC0(stderr, "RunDebug ");
    if (FUNC1(XML_WITH_ZLIB)) FUNC0(stderr, "Zlib ");
    if (FUNC1(XML_WITH_LZMA)) FUNC0(stderr, "Lzma ");
    FUNC0(stderr, "\n");
}