
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XML_ATTRIBUTE_NAME ;
 int XML_ATTRIBUTE_VALUE ;
 int XML_END ;
 int XML_TAG_CLOSE ;
 int XML_TAG_CLOSE_EMPTY ;
 int XML_TAG_OPEN ;
 int XML_TEXT ;
 int test_one (char*,int ,...) ;

int main(int argc, char *argv[]) {

        test_one("", XML_END);

        test_one("<foo></foo>",
                 XML_TAG_OPEN, "foo",
                 XML_TAG_CLOSE, "foo",
                 XML_END);

        test_one("<foo waldo=piep meh=\"huhu\"/>",
                 XML_TAG_OPEN, "foo",
                 XML_ATTRIBUTE_NAME, "waldo",
                 XML_ATTRIBUTE_VALUE, "piep",
                 XML_ATTRIBUTE_NAME, "meh",
                 XML_ATTRIBUTE_VALUE, "huhu",
                 XML_TAG_CLOSE_EMPTY, ((void*)0),
                 XML_END);

        test_one("xxxx\n"
                 "<foo><?xml foo?>     <!-- zzzz -->  </foo>",
                 XML_TEXT, "xxxx\n",
                 XML_TAG_OPEN, "foo",
                 XML_TEXT, "     ",
                 XML_TEXT, "  ",
                 XML_TAG_CLOSE, "foo",
                 XML_END);

        return 0;
}
