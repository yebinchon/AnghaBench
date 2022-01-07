
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef char xmlChar ;
typedef int (* warningSAXFunc ) (TYPE_2__*,char*,char const*) ;
typedef int * errorSAXFunc ;
struct TYPE_7__ {TYPE_1__* sax; } ;
struct TYPE_6__ {int (* warning ) (TYPE_2__*,char*,char const*) ;int * error; } ;


 int * defaultEntityLoader (char const*,char const*,TYPE_2__*) ;
 int fprintf (int ,char*,char const*,char const*) ;
 scalar_t__ load_trace ;
 int nbpaths ;
 scalar_t__* paths ;
 int stderr ;
 int xmlFree (char*) ;
 char* xmlStrcat (char*,char const*) ;
 char* xmlStrdup (char const*) ;

__attribute__((used)) static xmlParserInputPtr
xmllintExternalEntityLoader(const char *URL, const char *ID,
        xmlParserCtxtPtr ctxt) {
    xmlParserInputPtr ret;
    warningSAXFunc warning = ((void*)0);
    errorSAXFunc err = ((void*)0);

    int i;
    const char *lastsegment = URL;
    const char *iter = URL;

    if ((nbpaths > 0) && (iter != ((void*)0))) {
 while (*iter != 0) {
     if (*iter == '/')
  lastsegment = iter + 1;
     iter++;
 }
    }

    if ((ctxt != ((void*)0)) && (ctxt->sax != ((void*)0))) {
 warning = ctxt->sax->warning;
 err = ctxt->sax->error;
 ctxt->sax->warning = ((void*)0);
 ctxt->sax->error = ((void*)0);
    }

    if (defaultEntityLoader != ((void*)0)) {
 ret = defaultEntityLoader(URL, ID, ctxt);
 if (ret != ((void*)0)) {
     if (warning != ((void*)0))
  ctxt->sax->warning = warning;
     if (err != ((void*)0))
  ctxt->sax->error = err;
     if (load_trace) {
  fprintf (stderr,

    "Loaded URL=\"%s\" ID=\"%s\"\n",
    URL ? URL : "(null)",
    ID ? ID : "(null)");
     }
     return(ret);
 }
    }
    for (i = 0;i < nbpaths;i++) {
 xmlChar *newURL;

 newURL = xmlStrdup((const xmlChar *) paths[i]);
 newURL = xmlStrcat(newURL, (const xmlChar *) "/");
 newURL = xmlStrcat(newURL, (const xmlChar *) lastsegment);
 if (newURL != ((void*)0)) {
     ret = defaultEntityLoader((const char *)newURL, ID, ctxt);
     if (ret != ((void*)0)) {
  if (warning != ((void*)0))
      ctxt->sax->warning = warning;
  if (err != ((void*)0))
      ctxt->sax->error = err;
  if (load_trace) {
      fprintf (stderr,

    "Loaded URL=\"%s\" ID=\"%s\"\n",
    newURL,
    ID ? ID : "(null)");
  }
  xmlFree(newURL);
  return(ret);
     }
     xmlFree(newURL);
 }
    }
    if (err != ((void*)0))
        ctxt->sax->error = err;
    if (warning != ((void*)0)) {
 ctxt->sax->warning = warning;
 if (URL != ((void*)0))
     warning(ctxt, "failed to load external entity \"%s\"\n", URL);
 else if (ID != ((void*)0))
     warning(ctxt, "failed to load external entity \"%s\"\n", ID);
    }
    return(((void*)0));
}
