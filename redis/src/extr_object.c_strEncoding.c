
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strEncoding(int encoding) {
    switch(encoding) {
    case 130: return "raw";
    case 133: return "int";
    case 134: return "hashtable";
    case 131: return "quicklist";
    case 128: return "ziplist";
    case 132: return "intset";
    case 129: return "skiplist";
    case 135: return "embstr";
    default: return "unknown";
    }
}
