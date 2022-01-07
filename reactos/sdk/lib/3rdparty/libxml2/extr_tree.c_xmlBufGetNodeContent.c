
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_9__ {int type; struct TYPE_9__* next; struct TYPE_9__* children; int name; int doc; int * content; struct TYPE_9__* parent; } ;
typedef TYPE_2__ xmlNode ;
typedef TYPE_4__* xmlEntityPtr ;
typedef int * xmlBufPtr ;
typedef TYPE_5__* xmlAttrPtr ;
struct TYPE_11__ {TYPE_2__* children; } ;
struct TYPE_10__ {TYPE_2__* children; } ;
struct TYPE_8__ {int * href; } ;
 int xmlBufCat (int *,int *) ;
 TYPE_4__* xmlGetDocEntity (int ,int ) ;

int
xmlBufGetNodeContent(xmlBufPtr buf, const xmlNode *cur)
{
    if ((cur == ((void*)0)) || (buf == ((void*)0))) return(-1);
    switch (cur->type) {
        case 146:
        case 130:
     xmlBufCat(buf, cur->content);
            break;
        case 143:
        case 138:{
                const xmlNode *tmp = cur;

                while (tmp != ((void*)0)) {
                    switch (tmp->type) {
                        case 146:
                        case 130:
                            if (tmp->content != ((void*)0))
                                xmlBufCat(buf, tmp->content);
                            break;
                        case 135:
                            xmlBufGetNodeContent(buf, tmp);
                            break;
                        default:
                            break;
                    }



                    if (tmp->children != ((void*)0)) {
                        if (tmp->children->type != 137) {
                            tmp = tmp->children;
                            continue;
                        }
                    }
                    if (tmp == cur)
                        break;

                    if (tmp->next != ((void*)0)) {
                        tmp = tmp->next;
                        continue;
                    }

                    do {
                        tmp = tmp->parent;
                        if (tmp == ((void*)0))
                            break;
                        if (tmp == cur) {
                            tmp = ((void*)0);
                            break;
                        }
                        if (tmp->next != ((void*)0)) {
                            tmp = tmp->next;
                            break;
                        }
                    } while (tmp != ((void*)0));
                }
  break;
            }
        case 147:{
                xmlAttrPtr attr = (xmlAttrPtr) cur;
  xmlNodePtr tmp = attr->children;

  while (tmp != ((void*)0)) {
      if (tmp->type == 130)
          xmlBufCat(buf, tmp->content);
      else
          xmlBufGetNodeContent(buf, tmp);
      tmp = tmp->next;
  }
                break;
            }
        case 145:
        case 131:
     xmlBufCat(buf, cur->content);
            break;
        case 135:{
                xmlEntityPtr ent;
                xmlNodePtr tmp;


                ent = xmlGetDocEntity(cur->doc, cur->name);
                if (ent == ((void*)0))
                    return(-1);






                tmp = ent->children;
                while (tmp) {
      xmlBufGetNodeContent(buf, tmp);
                    tmp = tmp->next;
                }
  break;
            }
        case 136:
        case 141:
        case 132:
        case 140:
        case 128:
        case 129:
            break;
        case 142:



        case 134:
     cur = cur->children;
     while (cur!= ((void*)0)) {
  if ((cur->type == 138) ||
      (cur->type == 130) ||
      (cur->type == 146)) {
      xmlBufGetNodeContent(buf, cur);
  }
  cur = cur->next;
     }
     break;
        case 133:
     xmlBufCat(buf, ((xmlNsPtr) cur)->href);
     break;
        case 139:
        case 148:
        case 137:
            break;
    }
    return(0);
}
