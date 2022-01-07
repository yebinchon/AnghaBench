
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_11__ {int type; int * content; int * nsDef; int * properties; TYPE_1__* doc; struct TYPE_11__* next; struct TYPE_11__* last; } ;
struct TYPE_10__ {int * dict; } ;
 TYPE_2__* xmlAddChild (TYPE_2__*,TYPE_2__*) ;
 int xmlDictOwns (int *,int *) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 TYPE_2__* xmlNewTextLen (int const*,int) ;
 int * xmlStrncat (int *,int const*,int) ;
 int * xmlStrncatNew (int *,int const*,int) ;
 int xmlTextMerge (TYPE_2__*,TYPE_2__*) ;

void
xmlNodeAddContentLen(xmlNodePtr cur, const xmlChar *content, int len) {
    if (cur == ((void*)0)) {




 return;
    }
    if (len <= 0) return;
    switch (cur->type) {
        case 143:
        case 138: {
     xmlNodePtr last, newNode, tmp;

     last = cur->last;
     newNode = xmlNewTextLen(content, len);
     if (newNode != ((void*)0)) {
  tmp = xmlAddChild(cur, newNode);
  if (tmp != newNode)
      return;
         if ((last != ((void*)0)) && (last->next == newNode)) {
      xmlTextMerge(last, newNode);
  }
     }
     break;
 }
        case 147:
     break;
        case 130:
        case 146:
        case 135:
        case 136:
        case 131:
        case 145:
        case 132:
     if (content != ((void*)0)) {
         if ((cur->content == (xmlChar *) &(cur->properties)) ||
      ((cur->doc != ((void*)0)) && (cur->doc->dict != ((void*)0)) &&
       xmlDictOwns(cur->doc->dict, cur->content))) {
      cur->content = xmlStrncatNew(cur->content, content, len);
      cur->properties = ((void*)0);
      cur->nsDef = ((void*)0);
      break;
  }
  cur->content = xmlStrncat(cur->content, content, len);
            }
        case 142:
        case 140:
        case 134:
        case 141:
 case 133:
 case 128:
 case 129:



     break;
        case 139:
        case 148:
        case 137:
     break;
    }
}
