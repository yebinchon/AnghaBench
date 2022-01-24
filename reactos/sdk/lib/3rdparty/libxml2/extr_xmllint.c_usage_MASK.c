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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* XML_XML_DEFAULT_CATALOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(FILE *f, const char *name) {
    FUNC0(f, "Usage : %s [options] XMLfiles ...\n", name);
#ifdef LIBXML_OUTPUT_ENABLED
    fprintf(f, "\tParse the XML files and output the result of the parsing\n");
#else
    FUNC0(f, "\tParse the XML files\n");
#endif /* LIBXML_OUTPUT_ENABLED */
    FUNC0(f, "\t--version : display the version of the XML library used\n");
#ifdef LIBXML_DEBUG_ENABLED
    fprintf(f, "\t--debug : dump a debug tree of the in-memory document\n");
    fprintf(f, "\t--shell : run a navigating shell\n");
    fprintf(f, "\t--debugent : debug the entities defined in the document\n");
#else
#ifdef LIBXML_READER_ENABLED
    fprintf(f, "\t--debug : dump the nodes content when using --stream\n");
#endif /* LIBXML_READER_ENABLED */
#endif
#ifdef LIBXML_TREE_ENABLED
    fprintf(f, "\t--copy : used to test the internal copy implementation\n");
#endif /* LIBXML_TREE_ENABLED */
    FUNC0(f, "\t--recover : output what was parsable on broken XML documents\n");
    FUNC0(f, "\t--huge : remove any internal arbitrary parser limits\n");
    FUNC0(f, "\t--noent : substitute entity references by their value\n");
    FUNC0(f, "\t--noenc : ignore any encoding specified inside the document\n");
    FUNC0(f, "\t--noout : don't output the result tree\n");
    FUNC0(f, "\t--path 'paths': provide a set of paths for resources\n");
    FUNC0(f, "\t--load-trace : print trace of all external entities loaded\n");
    FUNC0(f, "\t--nonet : refuse to fetch DTDs or entities over network\n");
    FUNC0(f, "\t--nocompact : do not generate compact text nodes\n");
    FUNC0(f, "\t--htmlout : output results as HTML\n");
    FUNC0(f, "\t--nowrap : do not put HTML doc wrapper\n");
#ifdef LIBXML_VALID_ENABLED
    fprintf(f, "\t--valid : validate the document in addition to std well-formed check\n");
    fprintf(f, "\t--postvalid : do a posteriori validation, i.e after parsing\n");
    fprintf(f, "\t--dtdvalid URL : do a posteriori validation against a given DTD\n");
    fprintf(f, "\t--dtdvalidfpi FPI : same but name the DTD with a Public Identifier\n");
#endif /* LIBXML_VALID_ENABLED */
    FUNC0(f, "\t--timing : print some timings\n");
    FUNC0(f, "\t--output file or -o file: save to a given file\n");
    FUNC0(f, "\t--repeat : repeat 100 times, for timing or profiling\n");
    FUNC0(f, "\t--insert : ad-hoc test for valid insertions\n");
#ifdef LIBXML_OUTPUT_ENABLED
#ifdef LIBXML_ZLIB_ENABLED
    fprintf(f, "\t--compress : turn on gzip compression of output\n");
#endif
#endif /* LIBXML_OUTPUT_ENABLED */
#ifdef LIBXML_HTML_ENABLED
    fprintf(f, "\t--html : use the HTML parser\n");
    fprintf(f, "\t--xmlout : force to use the XML serializer when using --html\n");
    fprintf(f, "\t--nodefdtd : do not default HTML doctype\n");
#endif
#ifdef LIBXML_PUSH_ENABLED
    fprintf(f, "\t--push : use the push mode of the parser\n");
    fprintf(f, "\t--pushsmall : use the push mode of the parser using tiny increments\n");
#endif /* LIBXML_PUSH_ENABLED */
#ifdef HAVE_MMAP
    fprintf(f, "\t--memory : parse from memory\n");
#endif
    FUNC0(f, "\t--maxmem nbbytes : limits memory allocation to nbbytes bytes\n");
    FUNC0(f, "\t--nowarning : do not emit warnings from parser/validator\n");
    FUNC0(f, "\t--noblanks : drop (ignorable?) blanks spaces\n");
    FUNC0(f, "\t--nocdata : replace cdata section with text nodes\n");
#ifdef LIBXML_OUTPUT_ENABLED
    fprintf(f, "\t--format : reformat/reindent the output\n");
    fprintf(f, "\t--encode encoding : output in the given encoding\n");
    fprintf(f, "\t--dropdtd : remove the DOCTYPE of the input docs\n");
    fprintf(f, "\t--pretty STYLE : pretty-print in a particular style\n");
    fprintf(f, "\t                 0 Do not pretty print\n");
    fprintf(f, "\t                 1 Format the XML content, as --format\n");
    fprintf(f, "\t                 2 Add whitespace inside tags, preserving content\n");
#endif /* LIBXML_OUTPUT_ENABLED */
    FUNC0(f, "\t--c14n : save in W3C canonical format v1.0 (with comments)\n");
    FUNC0(f, "\t--c14n11 : save in W3C canonical format v1.1 (with comments)\n");
    FUNC0(f, "\t--exc-c14n : save in W3C exclusive canonical format (with comments)\n");
#ifdef LIBXML_C14N_ENABLED
#endif /* LIBXML_C14N_ENABLED */
    FUNC0(f, "\t--nsclean : remove redundant namespace declarations\n");
    FUNC0(f, "\t--testIO : test user I/O support\n");
#ifdef LIBXML_CATALOG_ENABLED
    fprintf(f, "\t--catalogs : use SGML catalogs from $SGML_CATALOG_FILES\n");
    fprintf(f, "\t             otherwise XML Catalogs starting from \n");
    fprintf(f, "\t         %s are activated by default\n", XML_XML_DEFAULT_CATALOG);
    fprintf(f, "\t--nocatalogs: deactivate all catalogs\n");
#endif
    FUNC0(f, "\t--auto : generate a small doc on the fly\n");
#ifdef LIBXML_XINCLUDE_ENABLED
    fprintf(f, "\t--xinclude : do XInclude processing\n");
    fprintf(f, "\t--noxincludenode : same but do not generate XInclude nodes\n");
    fprintf(f, "\t--nofixup-base-uris : do not fixup xml:base uris\n");
#endif
    FUNC0(f, "\t--loaddtd : fetch external DTD\n");
    FUNC0(f, "\t--dtdattr : loaddtd + populate the tree with inherited attributes \n");
#ifdef LIBXML_READER_ENABLED
    fprintf(f, "\t--stream : use the streaming interface to process very large files\n");
    fprintf(f, "\t--walker : create a reader and walk though the resulting doc\n");
#endif /* LIBXML_READER_ENABLED */
#ifdef LIBXML_PATTERN_ENABLED
    fprintf(f, "\t--pattern pattern_value : test the pattern support\n");
#endif
    FUNC0(f, "\t--chkregister : verify the node registration code\n");
#ifdef LIBXML_SCHEMAS_ENABLED
    fprintf(f, "\t--relaxng schema : do RelaxNG validation against the schema\n");
    fprintf(f, "\t--schema schema : do validation against the WXS schema\n");
#endif
#ifdef LIBXML_SCHEMATRON_ENABLED
    fprintf(f, "\t--schematron schema : do validation against a schematron\n");
#endif
#ifdef LIBXML_SAX1_ENABLED
    fprintf(f, "\t--sax1: use the old SAX1 interfaces for processing\n");
#endif
    FUNC0(f, "\t--sax: do not build a tree but work just at the SAX level\n");
    FUNC0(f, "\t--oldxml10: use XML-1.0 parsing rules before the 5th edition\n");
#ifdef LIBXML_XPATH_ENABLED
    fprintf(f, "\t--xpath expr: evaluate the XPath expression, imply --noout\n");
#endif

    FUNC0(f, "\nLibxml project home page: http://xmlsoft.org/\n");
    FUNC0(f, "To report bugs or get some help check: http://xmlsoft.org/bugs.html\n");
}