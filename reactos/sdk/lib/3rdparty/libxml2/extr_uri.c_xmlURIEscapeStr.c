
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xmlChar ;


 int IS_UNRESERVED (scalar_t__) ;
 int xmlFree (scalar_t__*) ;
 scalar_t__ xmlMallocAtomic (int) ;
 scalar_t__* xmlSaveUriRealloc (scalar_t__*,int*) ;
 int xmlStrchr (scalar_t__ const*,scalar_t__) ;
 scalar_t__* xmlStrdup (scalar_t__ const*) ;
 int xmlStrlen (scalar_t__ const*) ;
 int xmlURIErrMemory (char*) ;

xmlChar *
xmlURIEscapeStr(const xmlChar *str, const xmlChar *list) {
    xmlChar *ret, ch;
    xmlChar *temp;
    const xmlChar *in;
    int len, out;

    if (str == ((void*)0))
 return(((void*)0));
    if (str[0] == 0)
 return(xmlStrdup(str));
    len = xmlStrlen(str);
    if (!(len > 0)) return(((void*)0));

    len += 20;
    ret = (xmlChar *) xmlMallocAtomic(len);
    if (ret == ((void*)0)) {
        xmlURIErrMemory("escaping URI value\n");
 return(((void*)0));
    }
    in = (const xmlChar *) str;
    out = 0;
    while(*in != 0) {
 if (len - out <= 3) {
            temp = xmlSaveUriRealloc(ret, &len);
     if (temp == ((void*)0)) {
                xmlURIErrMemory("escaping URI value\n");
  xmlFree(ret);
  return(((void*)0));
     }
     ret = temp;
 }

 ch = *in;

 if ((ch != '@') && (!IS_UNRESERVED(ch)) && (!xmlStrchr(list, ch))) {
     unsigned char val;
     ret[out++] = '%';
     val = ch >> 4;
     if (val <= 9)
  ret[out++] = '0' + val;
     else
  ret[out++] = 'A' + val - 0xA;
     val = ch & 0xF;
     if (val <= 9)
  ret[out++] = '0' + val;
     else
  ret[out++] = 'A' + val - 0xA;
     in++;
 } else {
     ret[out++] = *in++;
 }

    }
    ret[out] = 0;
    return(ret);
}
