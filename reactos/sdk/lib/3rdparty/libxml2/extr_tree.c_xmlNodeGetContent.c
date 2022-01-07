
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__ const* xmlNodePtr ;
struct TYPE_7__ {int type; int * content; int name; int doc; } ;
typedef TYPE_2__ xmlNode ;
typedef int * xmlEntityPtr ;
typedef int xmlChar ;
typedef int * xmlBufPtr ;
typedef int xmlAttrPtr ;
struct TYPE_6__ {int * href; } ;
 int * xmlBufCreate () ;
 int * xmlBufCreateSize (int) ;
 int * xmlBufDetach (int *) ;
 int xmlBufFree (int *) ;
 int xmlBufGetNodeContent (int *,TYPE_2__ const*) ;
 int * xmlGetDocEntity (int ,int ) ;
 int * xmlGetPropNodeValueInternal (int ) ;
 int * xmlStrdup (int *) ;

xmlChar *
xmlNodeGetContent(const xmlNode *cur)
{
    if (cur == ((void*)0))
        return (((void*)0));
    switch (cur->type) {
        case 143:
        case 138:{
                xmlBufPtr buf;
                xmlChar *ret;

                buf = xmlBufCreateSize(64);
                if (buf == ((void*)0))
                    return (((void*)0));
  xmlBufGetNodeContent(buf, cur);
                ret = xmlBufDetach(buf);
                xmlBufFree(buf);
                return (ret);
            }
        case 147:
     return(xmlGetPropNodeValueInternal((xmlAttrPtr) cur));
        case 145:
        case 131:
            if (cur->content != ((void*)0))
                return (xmlStrdup(cur->content));
            return (((void*)0));
        case 135:{
                xmlEntityPtr ent;
                xmlBufPtr buf;
                xmlChar *ret;


                ent = xmlGetDocEntity(cur->doc, cur->name);
                if (ent == ((void*)0))
                    return (((void*)0));

                buf = xmlBufCreate();
                if (buf == ((void*)0))
                    return (((void*)0));

                xmlBufGetNodeContent(buf, cur);

                ret = xmlBufDetach(buf);
                xmlBufFree(buf);
                return (ret);
            }
        case 136:
        case 141:
        case 132:
        case 140:
        case 128:
        case 129:
            return (((void*)0));
        case 142:



        case 134: {
     xmlBufPtr buf;
     xmlChar *ret;

     buf = xmlBufCreate();
     if (buf == ((void*)0))
  return (((void*)0));

     xmlBufGetNodeContent(buf, (xmlNodePtr) cur);

     ret = xmlBufDetach(buf);
     xmlBufFree(buf);
     return (ret);
 }
        case 133: {
     xmlChar *tmp;

     tmp = xmlStrdup(((xmlNsPtr) cur)->href);
            return (tmp);
 }
        case 139:

            return (((void*)0));
        case 148:

            return (((void*)0));
        case 137:

            return (((void*)0));
        case 146:
        case 130:
            if (cur->content != ((void*)0))
                return (xmlStrdup(cur->content));
            return (((void*)0));
    }
    return (((void*)0));
}
