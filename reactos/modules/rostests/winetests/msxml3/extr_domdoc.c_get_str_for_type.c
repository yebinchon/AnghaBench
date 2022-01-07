
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOMNodeType ;
 int strcpy (char*,char*) ;
 int wsprintfA (char*,char*,int) ;

__attribute__((used)) static void get_str_for_type(DOMNodeType type, char *buf)
{
    switch (type)
    {
        case 133:
            strcpy(buf, "A");
            break;
        case 130:
            strcpy(buf, "E");
            break;
        case 131:
            strcpy(buf, "D");
            break;
        case 128:
            strcpy(buf, "T");
            break;
        case 132:
            strcpy(buf, "C");
            break;
        case 129:
            strcpy(buf, "P");
            break;
        default:
            wsprintfA(buf, "[%d]", type);
    }
}
