
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *clusterGetMessageTypeString(int type) {
    switch(type) {
    case 131: return "ping";
    case 130: return "pong";
    case 134: return "meet";
    case 137: return "fail";
    case 129: return "publish";
    case 135: return "auth-req";
    case 136: return "auth-ack";
    case 128: return "update";
    case 133: return "mfstart";
    case 132: return "module";
    }
    return "unknown";
}
