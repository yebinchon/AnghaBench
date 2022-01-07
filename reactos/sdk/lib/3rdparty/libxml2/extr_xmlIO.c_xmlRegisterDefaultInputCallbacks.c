
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlFileClose ;
 int xmlFileMatch ;
 int xmlFileOpen ;
 int xmlFileRead ;
 int xmlGzfileClose ;
 int xmlGzfileMatch ;
 int xmlGzfileOpen ;
 int xmlGzfileRead ;
 int xmlIOFTPClose ;
 int xmlIOFTPMatch ;
 int xmlIOFTPOpen ;
 int xmlIOFTPRead ;
 int xmlIOHTTPClose ;
 int xmlIOHTTPMatch ;
 int xmlIOHTTPOpen ;
 int xmlIOHTTPRead ;
 int xmlInputCallbackInitialized ;
 int xmlRegisterInputCallbacks (int ,int ,int ,int ) ;
 int xmlXzfileClose ;
 int xmlXzfileMatch ;
 int xmlXzfileOpen ;
 int xmlXzfileRead ;

void
xmlRegisterDefaultInputCallbacks(void) {
    if (xmlInputCallbackInitialized)
 return;

    xmlRegisterInputCallbacks(xmlFileMatch, xmlFileOpen,
                       xmlFileRead, xmlFileClose);
    xmlInputCallbackInitialized = 1;
}
