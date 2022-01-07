
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef TYPE_2__* xmlEntityPtr ;
typedef int xmlDoc ;
typedef char xmlChar ;
typedef int * xmlBufPtr ;
struct TYPE_12__ {scalar_t__ etype; char* content; int owner; TYPE_1__* last; TYPE_1__* children; } ;
struct TYPE_11__ {void* content; struct TYPE_11__* next; struct TYPE_11__* parent; } ;


 int XML_BUFFER_ALLOC_HYBRID ;
 scalar_t__ XML_INTERNAL_PREDEFINED_ENTITY ;
 int XML_TREE_INVALID_DEC ;
 int XML_TREE_INVALID_HEX ;
 int XML_TREE_UNTERMINATED_ENTITY ;
 TYPE_1__* xmlAddNextSibling (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ xmlBufAdd (int *,char const*,int) ;
 scalar_t__ xmlBufCat (int *,char*) ;
 int * xmlBufCreateSize (int ) ;
 void* xmlBufDetach (int *) ;
 int xmlBufFree (int *) ;
 int xmlBufIsEmpty (int *) ;
 int xmlBufSetAllocationScheme (int *,int ) ;
 int xmlCopyCharMultiByte (char*,int) ;
 int xmlFree (char*) ;
 TYPE_2__* xmlGetDocEntity (int const*,char*) ;
 TYPE_1__* xmlNewDocText (int const*,int *) ;
 TYPE_1__* xmlNewReference (int const*,char*) ;
 char* xmlStrndup (char const*,int) ;
 int xmlTreeErr (int ,TYPE_1__*,char const*) ;

xmlNodePtr
xmlStringGetNodeList(const xmlDoc *doc, const xmlChar *value) {
    xmlNodePtr ret = ((void*)0), last = ((void*)0);
    xmlNodePtr node;
    xmlChar *val;
    const xmlChar *cur = value;
    const xmlChar *q;
    xmlEntityPtr ent;
    xmlBufPtr buf;

    if (value == ((void*)0)) return(((void*)0));

    buf = xmlBufCreateSize(0);
    if (buf == ((void*)0)) return(((void*)0));
    xmlBufSetAllocationScheme(buf, XML_BUFFER_ALLOC_HYBRID);

    q = cur;
    while (*cur != 0) {
 if (cur[0] == '&') {
     int charval = 0;
     xmlChar tmp;




            if (cur != q) {
  if (xmlBufAdd(buf, q, cur - q))
      goto out;
     }
     q = cur;
     if ((cur[1] == '#') && (cur[2] == 'x')) {
  cur += 3;
  tmp = *cur;
  while (tmp != ';') {
      if ((tmp >= '0') && (tmp <= '9'))
   charval = charval * 16 + (tmp - '0');
      else if ((tmp >= 'a') && (tmp <= 'f'))
   charval = charval * 16 + (tmp - 'a') + 10;
      else if ((tmp >= 'A') && (tmp <= 'F'))
   charval = charval * 16 + (tmp - 'A') + 10;
      else {
   xmlTreeErr(XML_TREE_INVALID_HEX, (xmlNodePtr) doc,
              ((void*)0));
   charval = 0;
   break;
      }
      cur++;
      tmp = *cur;
  }
  if (tmp == ';')
      cur++;
  q = cur;
     } else if (cur[1] == '#') {
  cur += 2;
  tmp = *cur;
  while (tmp != ';') {
      if ((tmp >= '0') && (tmp <= '9'))
   charval = charval * 10 + (tmp - '0');
      else {
   xmlTreeErr(XML_TREE_INVALID_DEC, (xmlNodePtr) doc,
              ((void*)0));
   charval = 0;
   break;
      }
      cur++;
      tmp = *cur;
  }
  if (tmp == ';')
      cur++;
  q = cur;
     } else {



  cur++;
  q = cur;
  while ((*cur != 0) && (*cur != ';')) cur++;
  if (*cur == 0) {
      xmlTreeErr(XML_TREE_UNTERMINATED_ENTITY,
                 (xmlNodePtr) doc, (const char *) q);
      goto out;
  }
  if (cur != q) {



      val = xmlStrndup(q, cur - q);
      ent = xmlGetDocEntity(doc, val);
      if ((ent != ((void*)0)) &&
   (ent->etype == XML_INTERNAL_PREDEFINED_ENTITY)) {

   if (xmlBufCat(buf, ent->content))
       goto out;

      } else {



   if (!xmlBufIsEmpty(buf)) {
       node = xmlNewDocText(doc, ((void*)0));
       node->content = xmlBufDetach(buf);

       if (last == ((void*)0)) {
    last = ret = node;
       } else {
    last = xmlAddNextSibling(last, node);
       }
   }




   node = xmlNewReference(doc, val);
   if (node == ((void*)0)) {
       if (val != ((void*)0)) xmlFree(val);
       goto out;
   }
   else if ((ent != ((void*)0)) && (ent->children == ((void*)0))) {
       xmlNodePtr temp;


       ent->children = (xmlNodePtr) -1;
       ent->children = xmlStringGetNodeList(doc,
        (const xmlChar*)node->content);
       ent->owner = 1;
       temp = ent->children;
       while (temp) {
    temp->parent = (xmlNodePtr)ent;
    ent->last = temp;
    temp = temp->next;
       }
   }
   if (last == ((void*)0)) {
       last = ret = node;
   } else {
       last = xmlAddNextSibling(last, node);
   }
      }
      xmlFree(val);
  }
  cur++;
  q = cur;
     }
     if (charval != 0) {
  xmlChar buffer[10];
  int len;

  len = xmlCopyCharMultiByte(buffer, charval);
  buffer[len] = 0;

  if (xmlBufCat(buf, buffer))
      goto out;
  charval = 0;
     }
 } else
     cur++;
    }
    if ((cur != q) || (ret == ((void*)0))) {



 xmlBufAdd(buf, q, cur - q);
    }

    if (!xmlBufIsEmpty(buf)) {
 node = xmlNewDocText(doc, ((void*)0));
 node->content = xmlBufDetach(buf);

 if (last == ((void*)0)) {
     ret = node;
 } else {
     xmlAddNextSibling(last, node);
 }
    }

out:
    xmlBufFree(buf);
    return(ret);
}
