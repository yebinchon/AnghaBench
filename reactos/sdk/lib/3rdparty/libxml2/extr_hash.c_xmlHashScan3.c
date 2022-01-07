
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlHashTablePtr ;
typedef int xmlHashScanner ;
typedef int xmlChar ;
struct TYPE_3__ {int hashscanner; void* data; } ;
typedef TYPE_1__ stubData ;


 int stubHashScannerFull ;
 int xmlHashScanFull3 (int ,int const*,int const*,int const*,int ,TYPE_1__*) ;

void
xmlHashScan3(xmlHashTablePtr table, const xmlChar *name,
      const xmlChar *name2, const xmlChar *name3,
      xmlHashScanner f, void *data) {
    stubData stubdata;
    stubdata.data = data;
    stubdata.hashscanner = f;
    xmlHashScanFull3(table, name, name2, name3, stubHashScannerFull,
                     &stubdata);
}
