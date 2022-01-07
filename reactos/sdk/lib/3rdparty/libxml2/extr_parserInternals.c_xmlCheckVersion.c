
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LIBXML_VERSION ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 int xmlGenericError (int ,char*,int,int) ;
 int xmlGenericErrorContext ;
 int xmlInitParser () ;

void
xmlCheckVersion(int version) {
    int myversion = (int) LIBXML_VERSION;

    xmlInitParser();

    if ((myversion / 10000) != (version / 10000)) {
 xmlGenericError(xmlGenericErrorContext,
  "Fatal: program compiled against libxml %d using libxml %d\n",
  (version / 10000), (myversion / 10000));
 fprintf(stderr,
  "Fatal: program compiled against libxml %d using libxml %d\n",
  (version / 10000), (myversion / 10000));
    }
    if ((myversion / 100) < (version / 100)) {
 xmlGenericError(xmlGenericErrorContext,
  "Warning: program compiled against libxml %d using older %d\n",
  (version / 100), (myversion / 100));
    }
}
