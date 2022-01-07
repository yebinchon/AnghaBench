
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNodePtr ;


 int XML_FROM_TREE ;




 int __xmlSimpleError (int ,int,int ,char const*,char const*) ;

__attribute__((used)) static void
xmlTreeErr(int code, xmlNodePtr node, const char *extra)
{
    const char *msg = ((void*)0);

    switch(code) {
        case 130:
     msg = "invalid hexadecimal character value\n";
     break;
 case 131:
     msg = "invalid decimal character value\n";
     break;
 case 128:
     msg = "unterminated entity reference %15s\n";
     break;
 case 129:
     msg = "string is not in UTF-8\n";
     break;
 default:
     msg = "unexpected error number\n";
    }
    __xmlSimpleError(XML_FROM_TREE, code, node, msg, extra);
}
