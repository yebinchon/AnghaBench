
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlHashTablePtr ;
typedef int xmlChar ;
struct TYPE_3__ {unsigned long random_seed; unsigned long size; } ;



__attribute__((used)) static unsigned long
xmlHashComputeQKey(xmlHashTablePtr table,
     const xmlChar *prefix, const xmlChar *name,
     const xmlChar *prefix2, const xmlChar *name2,
     const xmlChar *prefix3, const xmlChar *name3) {
    unsigned long value = 0L;
    char ch;




    if (prefix != ((void*)0))
 value += 30 * (*prefix);
    else
 value += 30 * (*name);

    if (prefix != ((void*)0)) {
 while ((ch = *prefix++) != 0) {
     value = value ^ ((value << 5) + (value >> 3) + (unsigned long)ch);
 }
 value = value ^ ((value << 5) + (value >> 3) + (unsigned long)':');
    }
    if (name != ((void*)0)) {
 while ((ch = *name++) != 0) {
     value = value ^ ((value << 5) + (value >> 3) + (unsigned long)ch);
 }
    }
    value = value ^ ((value << 5) + (value >> 3));
    if (prefix2 != ((void*)0)) {
 while ((ch = *prefix2++) != 0) {
     value = value ^ ((value << 5) + (value >> 3) + (unsigned long)ch);
 }
 value = value ^ ((value << 5) + (value >> 3) + (unsigned long)':');
    }
    if (name2 != ((void*)0)) {
 while ((ch = *name2++) != 0) {
     value = value ^ ((value << 5) + (value >> 3) + (unsigned long)ch);
 }
    }
    value = value ^ ((value << 5) + (value >> 3));
    if (prefix3 != ((void*)0)) {
 while ((ch = *prefix3++) != 0) {
     value = value ^ ((value << 5) + (value >> 3) + (unsigned long)ch);
 }
 value = value ^ ((value << 5) + (value >> 3) + (unsigned long)':');
    }
    if (name3 != ((void*)0)) {
 while ((ch = *name3++) != 0) {
     value = value ^ ((value << 5) + (value >> 3) + (unsigned long)ch);
 }
    }
    return (value % table->size);
}
