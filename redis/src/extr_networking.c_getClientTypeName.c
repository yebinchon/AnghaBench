
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *getClientTypeName(int class) {
    switch(class) {
    case 130: return "normal";
    case 128: return "slave";
    case 129: return "pubsub";
    case 131: return "master";
    default: return ((void*)0);
    }
}
