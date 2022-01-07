
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlHashTablePtr ;
typedef int xmlHashScanner ;
struct TYPE_3__ {int hashscanner; void* data; } ;
typedef TYPE_1__ stubData ;


 int stubHashScannerFull ;
 int xmlHashScanFull (int ,int ,TYPE_1__*) ;

void
xmlHashScan(xmlHashTablePtr table, xmlHashScanner f, void *data) {
    stubData stubdata;
    stubdata.data = data;
    stubdata.hashscanner = f;
    xmlHashScanFull (table, stubHashScannerFull, &stubdata);
}
