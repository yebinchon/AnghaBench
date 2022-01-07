
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* XML_XML_DEFAULT_CATALOG ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void usage(FILE *f, const char *name) {
    fprintf(f, "Usage : %s [options] XMLfiles ...\n", name);



    fprintf(f, "\tParse the XML files\n");

    fprintf(f, "\t--version : display the version of the XML library used\n");
    fprintf(f, "\t--recover : output what was parsable on broken XML documents\n");
    fprintf(f, "\t--huge : remove any internal arbitrary parser limits\n");
    fprintf(f, "\t--noent : substitute entity references by their value\n");
    fprintf(f, "\t--noenc : ignore any encoding specified inside the document\n");
    fprintf(f, "\t--noout : don't output the result tree\n");
    fprintf(f, "\t--path 'paths': provide a set of paths for resources\n");
    fprintf(f, "\t--load-trace : print trace of all external entities loaded\n");
    fprintf(f, "\t--nonet : refuse to fetch DTDs or entities over network\n");
    fprintf(f, "\t--nocompact : do not generate compact text nodes\n");
    fprintf(f, "\t--htmlout : output results as HTML\n");
    fprintf(f, "\t--nowrap : do not put HTML doc wrapper\n");






    fprintf(f, "\t--timing : print some timings\n");
    fprintf(f, "\t--output file or -o file: save to a given file\n");
    fprintf(f, "\t--repeat : repeat 100 times, for timing or profiling\n");
    fprintf(f, "\t--insert : ad-hoc test for valid insertions\n");
    fprintf(f, "\t--maxmem nbbytes : limits memory allocation to nbbytes bytes\n");
    fprintf(f, "\t--nowarning : do not emit warnings from parser/validator\n");
    fprintf(f, "\t--noblanks : drop (ignorable?) blanks spaces\n");
    fprintf(f, "\t--nocdata : replace cdata section with text nodes\n");
    fprintf(f, "\t--c14n : save in W3C canonical format v1.0 (with comments)\n");
    fprintf(f, "\t--c14n11 : save in W3C canonical format v1.1 (with comments)\n");
    fprintf(f, "\t--exc-c14n : save in W3C exclusive canonical format (with comments)\n");


    fprintf(f, "\t--nsclean : remove redundant namespace declarations\n");
    fprintf(f, "\t--testIO : test user I/O support\n");






    fprintf(f, "\t--auto : generate a small doc on the fly\n");





    fprintf(f, "\t--loaddtd : fetch external DTD\n");
    fprintf(f, "\t--dtdattr : loaddtd + populate the tree with inherited attributes \n");







    fprintf(f, "\t--chkregister : verify the node registration code\n");
    fprintf(f, "\t--sax: do not build a tree but work just at the SAX level\n");
    fprintf(f, "\t--oldxml10: use XML-1.0 parsing rules before the 5th edition\n");




    fprintf(f, "\nLibxml project home page: http://xmlsoft.org/\n");
    fprintf(f, "To report bugs or get some help check: http://xmlsoft.org/bugs.html\n");
}
